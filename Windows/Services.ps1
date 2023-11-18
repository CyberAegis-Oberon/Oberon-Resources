##### Steps #####
# 
# Set-ExecutionPolicy RemoteSigned
# cd C:\Users\YourUsername\Desktop
# .\Services.ps1

net stop AxInstSV
sc config AxInstSV start= manual

net stop SensrSvc
sc config SensrSvc start= manual

net start Appinfo
sc config Appinfo start= manual

net stop AppHostSvc
sc config AppHostSvc start= manual

net stop AppIDSvc
sc config AppIDSvc start= manual

net start Appinfo
sc config Appinfo start= manual

net stop ALG
sc config ALG start= manual

net stop AppMgmt
sc config AppMgmt start= manual

net start BITS
sc config BITS start= manual

net start BFE
sc config BFE start= automatic

net start BDESVC
sc config BCESVC start= disabled

net stop wbengine
sc config wbengine start= manual

net stop bthserv
sc config bthserv start= disabled

net stop BrandCache
sc config BrandCache start= manual

net stop CertPropSvc
sc config CertPropSvc start= disabled

net stop EFS
sc config EFS start= disabled 

net stop Fax
sc config Fax start= disabled

net stop fhsvc
sc config fhsvc start= disabled

net stop MSFTPSVC
sc config MSFTPSVC start= disabled 

net stop HomeGroupListener
sc config HomeGroupListener start= disabled 

net stop SharedAccess
sc config SharedAccess start= disabled 

net stop Mcx2Svc
sc config Mcx2Svc start= disabled

net stop ftpsvc
sc config ftpsvc start= disabled 

net stop MSiSCSI
sc config MSiSCSI start= disabled 

net stop NetTcpPortSharing
sc config NetTcpPortSharing start= disabled 

net stop Netlogon
sc config Netlogon start= disabled

net stop CscService
sc config CscService start= disabled 

net stop WPCSvc
sc config WPCSvc start= disabled

net stop PlugPlay
sc config PlugPlay start= disabled 

net stop Spooler
sc config Spooler start= disabled

net stop QWAVE
sc config QWAVE start= disabled

net stop SessionEnv
sc config SessionEnv start= disabled

net stop TermService
sc config TermService start= disabled

net stop UmRdpService
sc config UmRdpService start= disabled

net stop RpcSs
sc config RpcSs start= disabled

net stop RpcLocator
sc config RpcLocator start= disabled

net stop RemoteRegistry
sc config RemoteRegistry start= disabled

net stop iprip
sc config iprip start= disabled

net stop RemoteAccess
sc config RemoteAccess start= disabled

net stop RpcEptMapper
sc config RpcEptMapper start= disabled 

net stop seclogon
sc config seclogon start= disabled 

net stop simptcp
sc config simptcp start= disabled

net stop SCardSvr
sc config SCardSvr start= disabled

net stop SCPolicySvc
sc config SCardSvr start= disabled 

net stop SNMP
sc config SNMP start= disabled

net stop SNMPTRAP
sc config SNMPTRAP start= disabled 

net stop TabletInputService
sc config TabletInputService start= disabled

net stop TapiSrv
sc config TapiSrv start= disabled

net stop TlntSvr
sc config TlntSvr start= disabled

net stop WebClient
sc config WebClient start= disabled

net stop WbioSrvc
sc config WbioSrvc start= disabled 

net stop wcncsvc
sc config wcncsvc start= disabled

net stop ehRecvr
sc config ehRecvr start= disabled

net stop ehSched
sc config ehSched start= disabled

net stop WMPNetworkSvc
sc config WMPNetworkSvc start= disabled

net stop WinRM
sc config WinRM start= disabled

net start BFE
sc config BFE start= automatic

net start EventSystem
sc config EventSystem start= automatic 

net start CryptSvc
sc config CryptSvc start= automatic 

net start DoSvc
sc config DoSvc start= automatic 

net start UxSms
sc config UxSms start= automatic

net start DeviceAssociationService
sc config DeviceAssociationService start= automatic

net start DmEnrollmentSvc
sc config DmEnrollmentSvc start= automatic 

net start DevQueryBroker
sc config DevQueryBroker start= automatic

net start MapsBroker
sc config MapsBroker start= automatic 

net start UxSms
sc config UxSms start= automatic 

net start DsmSvc
sc config DsmSvc start= automatic 

net start Dhcp
sc config Dhcp start= automatic

net start DPS
sc config DPS start= automatic

net start Dnscache
sc config Dnscache start= automatic

net start gpsvc
sc config gpsvc start= automatic 

net start iphlpsvc 
sc config iphlpsvc start= automatic 

net start NlaSvc
sc config NlaSvc start= automatic 

net start nsi
sc config nsi start= automatic 

net start Power
sc config Power start= automatic 

net start SamSs
sc config SamSs start= automatic 

net start wscsvc
sc config wscsvc start= automatic 

net start LanmanServer
sc config LanmanServer start= automatic 

net start ShellHWDetection
sc config ShellHWDetection start= automatic 

net start sppsvc
sc config sppsvc start= automatic 

net start SysMain
sc config SysMain start= automatic 

net start SENS
sc config SENS start= automatic 

net start Schedule
sc config Schedule start= automatic 

net start lmhosts
sc config lmhosts start= automatic 

net start Themes
sc config Themes start= automatic 

net start ProfSvc
sc config ProfSvc start= automatic 

net start VMTools
sc config VMTools start= automatic 

net start Audiosrv
sc config Audiosrv start= automatic 

net start AudioEndpointBuilder
sc config AudioEndpointBuilder start= automatic

net start WinDefend
sc config WinDefend start= automatic 

net start wudfsvc
sc config wudfsvc start= automatic 

net start WerSvc
sc config WerSvc start= automatic 

net start EventLog
sc config EventLog start= automatic 

net start MpsSvc
sc config MpsSvc start= automatic 

net start FontCache
sc config FontCache start= automatic 

net start Winmgmt
sc config Winmgmt start= automatic 

net start WSearch
sc config WSearch start= automatic 

net start wuauserv
sc config wuauserv start= automatic 

net start LanmanWorkstation
sc config LanmanWorkstation start= automatic 

net stop KyIso
sc config KyIso start= manual

net start COMSysApp
sc config COMSysApp start= automatic

net start EventSystem
sc config EventSystem start= manual

net stop Browser
sc config Browser start= manual

net stop VaultSvc
sc config VaultSvc start= manual

net start CryptSvc
sc config CryptSvc start= automatic

net start DcomLaunch
sc config DcomLaunch start= automatic

net start DoSvc
sc config DoSvc start= automatic

net start UxSms
sc config UxSms start= automatic

net start DsmSvc
sc config DsmSvc start= automatic

net start Dhcp
sc config Dhcp start= automatic

net start DPS 
sc config DPS start= automatic

net start WdiServiceHost
sc config WdiServiceHost start= manual

net start WdiSystemHost
sc config WdiSystemHost start= manual

net stop defragsvc
sc config defragsvc start= manual

net stop TrkWks
sc config TrkWks start= manual

net start MSDTC
sc config MSDTC start= manual

net start Dnscache
sc config Dnscache start= automatic

net stop Eaphost
sc config Eaphost start= manual

net stop fdPHost
sc config fdPHost start= manual

net stop FDResPub
sc config FDResPub start= manual

net start gpsvc
sc config gpsvc start= automatic

net stop hkmsvc
sc config hkmsvc start= manual

net stop HomeGroupListener
sc config HomeGroupListener start= disabled

net stop HomeGroupProvider
sc config HomeGroupProvider start= manual

net stop hidserv
sc config hidserv start= manual

net stop IKEEXT
sc config IKEEXT start= manual

net stop UI0Detect
sc config UI0Detect start= manual

net stop SharedAccess
sc config SharedAccess start= disabled

net start iphlpsvc
sc config iphlpsvc start= automatic

net stop PolicyAgent
sc config PolicyAgent start= manual

net stop KtmRm
sc config KtmRm start= manual

net stop Iltdsvc
sc config Iltdsvc start= manual

net stop Mcx2Svc
sc config Mcx2Svc start= disabled

net stop mscorsvw
sc config mscorsvw start= manual

net stop swprv
sc config swprv start= manual

net stop MMCSS
sc config MMCSS start= enabled

net stop NetTcpPortSharing
sc config NetTcpPortSharing start= disabled

net stop napagent
sc config napagent start= manual

net start Netman
sc config Netman start= manual

net start netfrofm
sc config netfrofm start= manual

net start NlaSvc
sc config NlaSvc start= automatic

net start nsi
sc config nsi start= automatic

net stop CscService
sc config CscService start= disabled

net stop PNRPsvc
sc config PNRPsvc start= manual

net stop p2psvc
sc config p2psvc start= manual

net stop p2pimsvc
sc config p2pimsvc start= manual

net stop pla
sc config pla start= manual

net stop IPBusEnum
sc config IPBusEnum start= manual

net stop PNRPAutoReg
sc config PNRPAutoReg start= manual

net start WPDBusEnum
sc config WPDBusEnum start= manual

net start power
sc config power start= automatic

net stop wercplsupport
sc config wercplsupport start= manual

net stop PcaSvc
sc config PcaSvc start= manual

net stop ProtectedStorage
sc config ProtectedStorage start= manual

net stop RasAuto
sc config RasAuto start= manual

net stop RasMan
sc config RasMan start= manual

net stop SstpSvc
sc config SstpSvc start= manual

net start SamSs
sc config SamSs start= automatic

net stop sppuinotify
sc config sppuinotify start= manual

net start SSDPSRV
sc config SSDPSRV start= manual

net stop StorSvc
sc config StorSvc start= manual

net start SENS 
sc config SENS start= automatic

net stop THREADORDER
sc config THREADORDER start= manual

net stop TPAutoConnSvc
sc config TPAutoConnSvc start= manual

net stop TPVCGateway
sc config TPVCGateway start= manual

net stop TBS
sc config TBS start= manual

net stop upnphost
sc config upnphost start= manual

net stop vds 
sc config vds start= manual

net stop VSS
sc config VSS start= manual

net stop WBADMIN
sc config WBADMIN start= manual

net stop idsvc
sc config idsvc start= manual

net stop WcsPlugInService
sc config WcsPlugInService start= manual

net start WUDFSvc
sc config WUDFSvc start= automatic

net start Wecsvc
sc config Wecsvc start= manual

net stop stisvc
sc config stisvc start= manual

net stop msiserver
sc config msiserver start= manual

net stop TrustedInstaller
sc config TrustedInstaller start= manual

net stop FontCache3.0.0.0
sc config FontCache3.0.0.0 start= manual

net start W32Time
sc config W32Time start= manual

net start wuauserv
sc config wuauserv start= automatic

net stop WinHttpAutoProxySvc
sc config WinHttpAutoProxySvc start= manual

net stop dot3svc
sc config dot3svc start= manual

net stop wmiApSrv
sc config wmiApSrv start= manual

net stop WwanSvc
sc config WwanSvc start= manual