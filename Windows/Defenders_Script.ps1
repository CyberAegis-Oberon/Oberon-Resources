# Enable Windows Defender if not already enabled
Set-MpPreference -DisableRealtimeMonitoring 0

# Update Windows Defender definitions
Update-MpSignature

# Configure Windows Defender to perform a daily quick scan
Set-MpPreference -RemediationScheduleDay 1 -RemediationScheduleTime 3

# Enable PUA (Potentially Unwanted Application) protection
Set-MpPreference -PUAProtection 1

# Enable Network Protection
Set-MpPreference -EnableNetworkProtection 1

# Enable Block at First Sight (cloud-based protection)
Set-MpPreference -MAPSReporting 2

# Configure Windows Defender to send file samples for analysis
Set-MpPreference -SubmitSamplesConsent 2

# Enable automatic sample submission for better threat detection
Set-MpPreference -MAPSReporting 1

# Configure Windows Defender to scan archive files
Set-MpPreference -ScanArchive 1

# Configure Windows Defender to scan removable drives
Set-MpPreference -DisableRemovableDriveScanning 0

# Configure Windows Defender to scan email attachments
Set-MpPreference -DisableEmailScanning 0

# Enable behavior monitoring
Set-MpPreference -EnableBehaviorMonitoring 1

# Enable automatic sample submission when threats are detected
Set-MpPreference -SubmitSamplesConsent 1

# Enable cloud-delivered protection
Set-MpPreference -EnableCloudProtection 1

# Enable automatic sample submission when a potential threat is detected
Set-MpPreference -SubmitSamplesConsent 3

# Enable tamper protection
Set-MpPreference -TamperProtection 1

# Enable Script Scanning
Set-MpPreference -EnableScriptScanning 1

# Enable scanning of network files
Set-MpPreference -EnableScanIncomingFiles 1

# Enable scanning of mapped network drives during full scan
Set-MpPreference -DisableScanningMappedNetworkDrivesForFullScan 0

# Enable scanning of mapped network drives during quick scan
Set-MpPreference -DisableScanningMappedNetworkDrivesForQuickScan 0

# Configure Windows Defender to block potentially unwanted applications
Set-MpPreference -PUAProtection 1

# Configure Windows Defender to block low-reputation apps
Set-MpPreference -SubmitSamplesConsent 1

# Set real-time monitoring to High
Set-MpPreference -SubmitSamplesConsent 2

# Enable Windows Defender SmartScreen for Microsoft Edge
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\SmartScreenEnabled" -Name "SmartScreenEnabled" -Value 1

# Enable Windows Defender SmartScreen for apps and files
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableSmartScreen" -Value 1

# Restart Windows Defender Service
Restart-Service WinDefend

Write-Host "Windows Defender has been configured for enhanced security."

