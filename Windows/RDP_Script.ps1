# Check if the script is running with administrative privileges
if (-not ([System.Security.Principal.WindowsPrincipal] [System.Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([System.Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Please run this script as an administrator."
    exit
}

# Enable Network Level Authentication (NLA)
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name "UserAuthentication" -Value 1

# Set the RDP security layer to SSL (TLS 1.0)
Set-ItemProperty -Path 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters' -Name "AllowEncryptionOracle" -Value 2

# Disable clipboard redirection
Set-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services' -Name "DisableClipboardRedirection" -Value 1

# Disable client printer redirection
Set-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services' -Name "DisablePrinterRedirection" -Value 1

# Always prompt for password upon connection
Set-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services' -Name "fPromptForPassword" -Value 1

# Require user authentication using Network Level Authentication (NLA)
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name "UserAuthentication" -Value 1

# Require SSL for RDP connections
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name "SecurityLayer" -Value 2

# Enable RDP firewall rule (skip this step if your firewall settings are already configured)
Enable-NetFirewallRule -Name "RemoteDesktop-UserMode-In-TCP"

# Restart the Remote Desktop Services (TermService) to apply changes
Restart-Service -Name TermService

Write-Host "RDP has been configured with the most secure settings. Network Level Authentication (NLA) is enabled, and SSL is required for RDP connections. Clipboard and printer redirection are disabled. Password prompt on connection is enabled."
