#!/bin/bash

NC='\033[0m' # No Color
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
BOLD='\e[1m'
ITALIC='\e[3m'
REVERSE='\e[7m'

echo "ooooo        ooooo     ooo oooo    oooo       .o.       oooo    oooo ooooo     ooo "
echo " 888          888       8   888   .8P        .888.       888   .8P'   888'      8' "
echo " 888          888       8   888  d8'        .8 888.      888  d8      888       8  "
echo " 888          888       8   88888[         .8'  888.     88888[       888       8  "
echo " 888          888       8   888 88b.      .88ooo8888.    888 88b.     888       8  "
echo " 888       o   88.    .8    888   88b.   .8'      888.   888   88b.    88.    .8'  "
echo "o888ooooood8     YbodP     o888o  o888o o88o     o8888o o888o  o888o     YbodP     "

echo -e "____________________________"
echo -e "|      ${REVERSE}Script${NC}     | ${REVERSE}Number${NC} |"
echo -e "|-----------------|--------|"
echo -e "| ${RED}Permissions${NC}     |    ${RED}1${NC}   |"
echo -e "| ${GREEN}Users${NC}           |    ${GREEN}2${NC}   |"
echo -e "| ${YELLOW}Firewall${NC}        |    ${YELLOW}3${NC}   |"
echo -e "| ${BLUE}SSH${NC}             |    ${BLUE}4${NC}   |"
echo -e "| ${PURPLE}Sysctl${NC}          |    ${PURPLE}5${NC}   |"
echo -e "| ${CYAN}Packages${NC}        |    ${CYAN}6${NC}   |"
echo -e "| ${BOLD}Forbidden Files${NC} |    ${BOLD}7${NC}   |"
echo -e "| ${ITALIC}Misc${NC}            |    ${ITALIC}8${NC}   |"
echo -e "| ${CYAN_BACKGROUND}Run All${NC}         |    ${CYAN_BACKGROUND}9${NC}   |"
echo -e "|--------------------------|"

echo "Enter a number for a Script to Run ('quit' to exit)"
read input

if [[ $input == "quit" ]]; then
    exit 0
fi

if ((input >= 1 && input <= 9)); then
    sed -i '1s/^.*#//;s/\r$//' ./Permissions.sh
    sed -i '1s/^.*#//;s/\r$//' ./Users.sh
    sed -i '1s/^.*#//;s/\r$//' ./Firewall.sh
    sed -i '1s/^.*#//;s/\r$//' ./SSH.sh
    sed -i '1s/^.*#//;s/\r$//' ./Sysctl.sh
    sed -i '1s/^.*#//;s/\r$//' ./Packages.sh
    sed -i '1s/^.*#//;s/\r$//' ./ForbiddenFiles.sh
    sed -i '1s/^.*#//;s/\r$//' ./Misc.sh

    case $input in
        1) ./Permissions.sh ;;
        2) ./Users.sh ;;
        3) ./Firewall.sh ;;
        4) ./SSH.sh ;;
        5) ./Sysctl.sh ;;
        6) ./Packages.sh ;;
        7) ./ForbiddenFiles.sh ;;
        8) ./Misc.sh ;;
        9)
            ./Permissions.sh
            ./Users.sh
            ./Firewall.sh
            ./SSH.sh
            ./Sysctl.sh
            ./Packages.sh
            ./ForbiddenFiles.sh
            ./Misc.sh
            ;;
        *)
            echo "Invalid input. Exiting..."
            exit 1
            ;;
    esac
else
    echo "Enter a valid Script Number."
fi

echo -e "\e[1;31m Script done! Yippee! \e[0m"