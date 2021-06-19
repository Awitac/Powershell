# Creatated by Awitac 
# Changes                                                                              ES 2021-06-16 
# 
#                                      ###### WARNING ######
#      This script should only be run if you encounter issue with the default PS uninstallation
#      Lets the PS un installation window roll back the system, when it is done, run the script
#      then run the default PS uninstallation 
#
#######################################################################################################
#
# STOP Ascom IIS Sites
Stop-WebSite 'Ascom Unite'
Stop-WebSite 'Ascom Unite Device Manager'
Start-Sleep -Seconds 1

# STOP RABBIT 
Stop-Process -Name "erlsrv" -Force
Start-Sleep -Seconds 1

# Set recovery mode to no action needs "service name"
$array = @("AscomActivePassiveHandler"                  ,
"Ascom Unite Central Contacts Service"                  ,
"Ascom Unite ClientDataService"                         ,
"Ascom Unite DECT Interface"                            ,
"Ascom Unite DECT Messaging"                            ,
"Ascom Unite SMSC"                                      ,
"Ascom Unite Device Manager"                            ,
"AscomFaultNotification"                                ,
"Ascom Unite FaultHandler"                              ,
"Ascom Unite Host Router"                               ,
"Ascom Unite IP-DECT"                                   ,
"Ascom Unite Legacy Adapter"                            ,
"AscomLocationHandler"                                  ,
"ServicesWindowsLog"                                    ,
"MessageCompositionGUIService"                          ,
"Ascom Unite Message Composition Service"               ,
"Ascom Unite Message Service"                           ,
"MessagebusCommandService"                              ,
"ModuleMessagingService"                                ,
"ModuleSynchronizationService"                          ,
"Ascom Unite OAP"                                       ,
"PatientHandlerService"                                 ,
"PatientInformationService"                             ,
"RoundingTimerService"                                  ,
"SchedulingService"                                     ,
"AscomSupervision"                                      ,
"TimerServiceManager"                                   ,
"TimerServiceReceiver"                                  ,
"UserSyncService"                                       ,
"Ascom Unite WLAN"                                      ,
"UserSyncService"                                       ,
"Ascom Unite WSCSI")

# Set Force stop services, needs service path name
$array2 = @("Ascom.Unite.ActivePassiveHandlerService"   ,
"Ascom.Unite.CentralContactsService"                    ,      
"Ascom.Unite.ClientDataService"                         , 
"Ascom.Unite.AmazonDH"                                  ,
"Ascom.Unite.9dCSI"                                     ,
"Ascom.Unite.SMSC"                                      ,
"Ascom.Unite.DeviceManager"                             , 
"Ascom.Unite.FaultNotification.Services.Host"           ,
"Ascom.Unite.FaultHandler"                              , 
"UniteHostRouter"                                       ,
"Ascom.Unite.IPDECT"                                    , 
"Ascom.Unite.LegacyAdapter.LegacyAdapterService"        ,
"Ascom.Unite.Connect.LocationHandler"                   , 
"Ascom.Unite.Services.Windows.Log"                      ,
"Ascom.Unite.MessageCompositionGUI"                     ,
"Ascom.Unite.MessageCompositionService"                 ,
"Ascom.Unite.MessageService"                            ,
"Ascom.Unite.Services.Windows.MessagebusCommandService" ,
"Ascom.Unite.Services.Windows.ModuleMessaging"          ,
"Ascom.Unite.Services.Windows.ModuleSynchronization"    ,
"Ascom.Unite.OAP"                                       , 
"Ascom.Unite.Connect.PatientHandler"                    ,
"Ascom.Unite.Services.Windows.PatientInformationService" , 
"Ascom.Unite.Services.Windows.RoundingTimerService"     ,
"Ascom.Unite.Services.Windows.Scheduling"               , 
"Ascom.Unite.Supervisor"                                , 
"Ascom.Unite.TimerService.Manager"                      , 
"Ascom.Unite.TimerService.Receiver"                     , 
"Ascom.Unite.Services.Windows.ModuleUserSyncSubscriptionService" , 
"Ascom.Unite.9iCSI"                                     , 
"Ascom.Unite.WSCSI")




for ($i=0; $i -lt $array.length; $i++) {
$array[$i] 
                sc.exe failure $array[$i] reset= 3600 actions= "" /3600
                Start-Sleep -Milliseconds 50
                Stop-Process -Name $array2[$i] -Force

}
              
