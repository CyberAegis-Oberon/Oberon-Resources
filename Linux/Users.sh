#!/bin/bash

echo -e "\033[0;32m Starting Users.sh \033[0m"

# Search for lines with ':0:' in /etc/passwd
grep_result=$(awk -v search=":0:" '$0 ~ search {print NR, $0}' "/etc/passwd")

# Check if there is more than one match
if [ $(echo "$grep_result" | wc -l) -gt 1 ]; then
    echo -e "\033[0;101m IMPOSTER ROOT FOUND \033[0m"
    
    # Print each matching line and ask whether to delete it
    echo "Matching lines:"
    echo "$grep_result"
    
    while true; do
        echo "Do you want to delete a line? (y/n): "
        read choice
        case $choice in
            [Yy]* )
                # Ask which line to delete
                echo "Enter the line number to delete: "
                read line_number
                # Delete the specified line
                sed -i "${line_number}d" /etc/passwd
                echo "Line deleted."
                ;;
            [Nn]* )
                echo -e "\033[0;102m No more imposter roots :) Crisis averted \033[0m"
                break
                ;;
            * )
                echo "Please enter 'y' or 'n'."
                ;;
        esac
    done
else
    echo "No roots detected AHHHHHHHH"
fi


# Read permitted users and admins from the config file
permitted_users="$(cut -d! -f1 config)"
permitted_admins="$(grep "!" config | cut -d! -f1)"
current_users="$(cut -d: -f1,3 /etc/passwd | grep -E ':[0-9]{4}$' | cut -d: -f1)"

# Function to check if a user is valid
is_permitted() {
    for permitted_user in $permitted_users; do
        if [ "$permitted_user" == "$1" ]; then
            return 0
        fi
    done
    return 1
}

# Remove unauthorized users
echo "Removing unauthorized users..."
for user in $current_users; do
    if ! is_permitted "$user"; then
        echo "Removing user: $user"
        # echo "$user" >> /opt/yourscript/removed_users
        userdel -f "$user"
    fi
done

# Set their password to "CyberPatriot1!"
echo "Setting password of CyberPatriot1!"
for user in $permitted_users; do
     useradd $user -m -p "CyberPatriot1!" 
     echo -e "CyberPatriot1!\nCyberPatriot1!" | passwd "$user"
     sudo chage -m 7 -M 90 -I 10 -W 7 "$user"
done


# Function to check if a user is an admin
is_admin() {
	for permitted_admin in $permitted_admins; do
    	if [ "$permitted_admin" == "$1" ]; then
        	return 0
    	fi
	done
	return 1
}

# Remove non-admin users from sudo and adm groups
echo "Removing non-admin users from sudo and adm groups..."
for user in $current_users; do
    if ! is_admin "$user"; then
        echo "Removing admin privileges for user: $user"
        deluser "$user" sudo 2>/dev/null
        deluser "$user" adm 2>/dev/null
    fi
done

# Add admin users to sudo and adm groups
echo "Adding admin users to sudo and adm groups..."
for user in $permitted_admins; do
    if is_admin "$user"; then
        echo "Adding admin privileges for user: $user"
        adduser "$user" sudo
        adduser "$user" adm
    fi
done

echo -e "\033[0;32m Users.sh Complete \033[0m"