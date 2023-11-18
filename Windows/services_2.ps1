$answer = read-host -prompt "Configure services? (y/n)"
if ($answer.trim() -eq "y"){
    $stop =  @("alg", "appxsvc", "bdesvc", "bthserv", "browser", "cdpsvc", "dfs", "dfsr", "dmwappushservice", "mapsbroker", "fhsvc", "fsvc", "sharedaccess", "iphlpsvc", "kpssvc", "lpdsvc", "mcx2svc", "wlidsvc", "nettcpportsharing", "netlogon", "cscservice", "wpcsvc", "perfhost", "pnrpsvc", "p2psvc", "p2pimsvc", "phonesvc", "plugplay", "ipbusenum", "pnrpautoreg", "spooler", "printnotify", "qwave", "rasauto", "rasman", "sessionenv", "termservice", "umrdpservice", "rpclocator", "remoteregistry", "iprip", "remoteaccess", "sstpsvc", "simptcp", "scardsvr", "scpolicysvc", "snmp", "snmptrap", "sacsvr", "ssdpsrv", "imhosts", "tapisrv", "tlntsvr", "themes", "upnphost", "webclient", "frameserver", "stisvc", "icssvc", "ehrecvr", "ehsched", "wmpnetworksvc", "winrm", "lanmanworkstation", "w3svc")
    $start = @("aelookupsvc", "appidsvc", "appinfo", "bits", "brokerinfrastructure", "bfe", "eventsystem", "comsysapp", "coremessagingregistrar", "cryptsvc", "dcomlaunch", "dosvc", "uxsms", "dsmsvc", "dhcp", "dps", "wdiservicehost", "wdisystemhost", "msdtc", "dnscache", "gpsvc", "lsm", "ftpsvc", "netman", "netprofm", "nlasvc", "nsi", "wpdbusenum", "power", "pcasvc", "protectedstorage", "rpcss", "rpceptmapper", "samss", "wscsvc", "lanmanserver", "shellhwdetection", "sppsvc", "svsvc", "sysmain", "sens", "schedule", "usosvc", "ualsvc", "profsvc", "vmtools", "audiosrv", "audioendpointbuilder", "windefend", "wudfsvc", "wersvc", "wecsvc", "eventlog", "mpssvc", "fontcache", "winmgmt", "trustedinstaller", "wpnservice", "wpnuserservice", "wsearch", "w32time", "wuauserv", "wwansvc")

    foreach ($service in $stop){
        stop-service $service -ErrorAction SilentlyContinue | out-null
        set-service -name $service -startuptype Disabled -ErrorAction SilentlyContinue | out-null
    }

    foreach ($service in $start){
        start-service $service -ErrorAction SilentlyContinue | out-null
        set-service -name $service -startuptype Automatic -ErrorAction SilentlyContinue | out-null
    }
    write-host "SERVICES CONFIGURED" -ForegroundColor Green
}
else{
    write-host "Not configuring services" -ForegroundColor Yellow
}