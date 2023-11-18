$users = Get-LocalUser
foreach ($user in $users) {
    Set-LocalUser -Name $user.Name -Password (ConvertTo-SecureString "CyberPatriot123!" -AsPlainText -Force)
}
