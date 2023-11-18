##### Steps #####
# 
# Set-ExecutionPolicy RemoteSigned
# cd C:\Users\YourUsername\Desktop
# .\Passwords.ps1

# Define the common password to set for all users
$NewPassword = "Password123#"

# Get all local user accounts (excluding built-in accounts like Administrator)
$Users = Get-WmiObject Win32_UserAccount | Where-Object { $_.LocalAccount -eq $true -and $_.Name -ne 'Administrator' }

# Loop through each user and change their password
foreach ($User in $Users) {
    $Username = $User.Name

    # Try to set the new password for the user
    try {
        net user $Username $NewPassword
        Write-Host "Password changed for user: $Username"
    } catch {
        Write-Host "Failed to change password for user: $Username - Error: $_.Exception.Message"
    }
}

Set-MpPreference -CheckForSignaturesBeforeRunningScan $true
Set-MpPreference -DisableAutoExclusions $true
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services\" /v fEncryptRPCTraffic /t REG_DWORD /d 1
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services\" /v DeleteTempDirsOnExit/t REG_DWORD /d 1
set-mppreference -disablescriptscanning $false
Set-NetFirewallProfile -Name [Domain/Private/Public] -Log[Allowed/Blocked/Ignored] true 
