#arrays with services

#services to set to "Automatic" and to start
$auto_enable_services = @("BITS", "BrokerInfrastructure", "BFE", "EventSystem", "CoreMessagingRegistrar", "CryptSvc", "DcomLaunch", "DoSvc", "Desktop Window Manager Session Manager", "DsmSvc", "Dhcp", "DPS", "Dnscache", "gpsvc", "LSM", "MMCSS", "NlaSvc", "nsi", "Power", "PcaSvc", "ProtectedStorage", "RpcSs", "RpcEptMapper", "SamSs", "wscsvc", "LanmanServer", "ShellHWDetection", "sppsvc", "svsvc", "Superfetch", "SENS", "Schedule", "UsoSvc", "User Access Logging Service", "ProfSvc", "VMTools", "Audiosrv", "AudioEndpointBuilder", "WdNisSvc", "WinDefend", "WUDFRd", "WerSvc", "Wecsvc", "EventLog", "mpssvc", "FontCache", "Winmgmt", "TrustedInstaller", "WpnService", "WpnUserService", "WSearch", "wuauserv")

#servies to disable and to stop
$disable_stop_services = @("ALG", "AppXSvc", "bthserv", "Browser", "CDPSvc", "DiagTrack", "DeviceAssociationService", "DFS Namespace", "DFS Replication", "DFS Management Tools", "dmwappushservice", "MapsBroker", "fhsvc", "lfsvc", "SharedAccess", "LPDSVC", "Mcx2Svc", "wlidsvc", "NetTcpPortSharing", "Netlogon", "defragsvc", "WpcMonSvc", "CscService", "PerfHost", "PNRPsvc", "p2psvc", "p2pimsvc", "PhoneSvc", "PlugPlay", "IPBusEnum", "PNRPAutoReg", "Spooler", "PrintNotify", "QWAVE", "RasAuto", "RasMan", "SessionEnv", "TermService", "UmRdpService", "RpcLocator", "RemoteRegistry", "seclogon", "iprip", "RemoteAccess", "Simptcp", "SCardSvr", "SCPolicySvc", "SNMP Service", "SNMPTRAP", "SMTP Service", "sacsvr", "SSDPSRV", "lmhosts", "TapiSrv", "Telnet", "Themes", "upnphost", "WebClient", "WbioSrvc", "FrameServer", "stisvc", "icssvc", "EhRecvr", "ehSched", "WMPNetworkSvc", "XboxNetApiSvc", "XblGameSave", "XblAuthManager")

#services to set to "Manual" and to start
$manual_start_services = @("Application Experience", "AppIDSvc", "Appinfo", "COMSysApp", "WdiServiceHost", "WdiSystemHost", "MSDTC", "Netman", "Netprofm", "WPDBusEnum", "W32Time", "WwanSvc")

#services to set to "Manual" and to stop
$manual_stop_services = @("AxInstSV", "Adaptive Brightness", "Application Host Helper Service", "AppMgmt", "Block Level Backup Engine Service", "BranchCache", "CNG Key Isolation", "VaultSvc", "DsSvc", "Disk Defragmenter", "TrkWks", "EFS", "Eaphost", "fdPHost", "Health Key and Certificate Management", "Human Interface Device Access", "IKEEXT", "Interactive Services Detection", "PolicyAgent", "KtmRm", "lltdsvc", "Microsoft .NET Framework NGEN", "swprv", "Network Access Protection Agent", "pla", "wercplsupport", "SPP Notification Service", "StorSvc", "Thread Ordering Server", "TP AutoConnect Service", "TP VC Gateway Service", "TPM Base Services", "vds", "VMware Snapshot Provider", "VSS", "SDRSVC", "Windows Color System", "msiserver", "FontCache3.0.0.0", "WinHttpAutoProxySvc", "dot3svc", "wmiApSrv")

#looping through auto_enable_services and setting the statup type to automatic, and starting the service
ForEach ($svc in $auto_enable_services) {
    Write-Host $svc -ForegroundColor Green
    Set-Service -Name $svc -StartupType Automatic -ErrorAction SilentlyContinue
    Start-Service $svc -ErrorAction SilentlyContinue
     
}

#looping through disable_stop_services and disabling and stopping each service
ForEach ($svc in $disable_stop_services) {
    Write-Host $svc -ForegroundColor Red
    Set-Service -Name $svc -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service $svc -ErrorAction SilentlyContinue
}

#looping through manual_start_services and setting the startup type to manual, and starting the service
ForEach ($svc in $manual_start_services) {
    Write-Host $svc -ForegroundColor Yellow
    Set-Service -Name $svc -StartupType Manual -ErrorAction SilentlyContinue
    Start-Service $svc -ErrorAction SilentlyContinue

}

#looping through manual_stop_services and setting the startup type to manual, and stopping the service
ForEach ($svc in $manual_stop_services) {
    Write-Host $svc -ForegroundColor Blue
    Set-Service -Name $svc -StartupType Manual -ErrorAction SilentlyContinue
    Stop-Service $svc -ErrorAction SilentlyContinue
}