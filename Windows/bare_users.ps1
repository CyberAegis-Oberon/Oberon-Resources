$answer = read-host -prompt "Secure users? (y/n)"
if ($answer.trim() -eq "y"){
    $password = read-host -prompt "Enter a secure password that you would like for the users to have" -AsSecureString
    $users = (get-wmiobject win32_useraccount -filter "localaccount=true")
    foreach ($user in $users){
        $username = $user.Name
        if ($username -eq "Administrator" -or $username -eq "DefaultAccount" -or $username -eq "WDAGUtilityAccount"){
            disable-localuser -name $username | out-null
        }
        elseif ($username -ne ([System.Environment]::UserName)){
            net user $username $password | out-null
            wmic useraccount where "Name='$username'" set passwordexpires = True | out-null
            enable-localuser -name $username | out-null
            write-host "The user" $username "has been secured" -ForegroundColor DarkGreen
        }
    }
    write-host
    $answer = read-host -prompt "Are there any missing users here that have to be added? (y/n)"
    if ($answer.trim() -eq "y"){
        $answer = read-host -prompt "Please write all missing users separated by a comma (eg. user1,user2,user3)"
        foreach ($user in $answer -split ","){
            new-localuser $user -password $password | out-null
            write-host "The user" $user "has been added" -ForegroundColor DarkGreen
        }
    }
    else{
        write-host "Not adding any users" -ForegroundColor Yellow
    }
    write-host
    $answer = read-host -prompt "Are there any unauthorized users here that have to be removed? (y/n)"
    if ($answer.trim() -eq "y"){
        $answer = read-host -prompt "Please write all unauthorized users separated by a comma (eg. user1,user2,user3)"
        foreach ($user in $answer -split ","){
            remove-localuser -Name $user | out-null
            write-host "The user" $user "has been deleted" -ForegroundColor DarkGreen
        }
    }
    else{
        write-host "Not removing any users" -ForegroundColor Yellow
    }
    write-host "USERS CONFIGURED" -ForegroundColor Green
}
else{
    write-host "Not securing users" -ForegroundColor Yellow
}