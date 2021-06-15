#  Changes                                                                         ES 2021-06-13 
#  Changes                                                                         ES 2021-06-15 
# 
#  Script will open the inbound ports for Unite PS
#    
# IP Ports between Unite Admin and Elise3 modules
#    Unite TCP   443     Unite Web traffic (https)
#    Unite TCP   10170   Unite module communication
#
# IP Ports between VoWiFi System and Unite
#    Unite TCP   33000   Unite VoWiFi
#    Unite TCP   33001   Unite VoWiFi
#    Unite TCP   33010   Unite VoWiFi WebSocket
#
# IP Ports between DECT System and Unite
#	Unite TCP   1817    Unite IP-DECT (encrypted)
#   Unite TCP   10146   Unite IP-DECT Messaging (encrypted)
#   Unite TCP   10147   Unite IP-DECT Messaging (encrypted)
#	Unite TCP   33010   Unite IP-DECT WebSocket
#           
# IP Ports between Ascom Myco and Unite
#    Unite TCP   33003   Ascom Myco WebSocket
#
# IP Ports for Unite View Services
#    Unite TCP   8044    Unite View Client
#    Unite TCP   8045    Unite View API
#
# IP Ports between LDAP Server and Unite
#	 UNITE TCP	389		Unite LDAP
#	 UNITE TCP	636		Unite LDAP SSL
#	 UNITE TCP	3268	Unite LDAP Central phonebok
#	 UNITE TCP	3269	Unite LDAP Central phonebok SSL
#
# IP Ports for Device Management
#	 Unite TCP   10153   Device Manager
#    Unite HTTP  7919    Device File download
#	 Unite TCP   10176   Logon (IPBS)/IP DECT Gateway (IPBL) to Device Manager
#    Unite HTTP  10217   Logon Ascom Myco DECT to DeviceManager
#
# IP Ports for OAP
#    Unite TCP   1321    Unite OAP v3
#    Unite TCP   1322    Unite OAP
#
# IP Ports for Unite AM/Unite PS
#    Unite UDP   3217    Unite UUS
#	 Unite HTTP  8181    Unite Supervisor Web interface (http)
#           
# IP Ports for SQL
#    Unite TCP   1433    Default SQL communication
#
#            NO GARANTIES! ALWAYS CONFIRM THE RULES AFTER RUNNING THE SCRIPT
#
#######################################################################################################
#
# Add Ascom Unite HTTPS 443 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite HTTPS 443-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite HTTPS 443"
$Description="Ascom Unite HTTPS 443"
$protocol="TCP"
$portNumbers='443'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 10170 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 10170-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 10170"
$Description="Ascom Unite TCP 10170 Unite module communication"
$protocol="TCP"
$portNumbers='10170'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 33000 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 33000-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 33000"
$Description="Ascom Unite TCP 33000 VoWiFi device"
$protocol="TCP"
$portNumbers='33000'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 33001 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 33001-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 33001"
$Description="Ascom Unite TCP 33001 VoWiFi device"
$protocol="TCP"
$portNumbers='33001'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 33010 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 33010-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 33010"
$Description="Ascom Unite TCP 33010 Unite VoWiFi WebSocket"
$protocol="TCP"
$portNumbers='33010'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 1817 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 1817-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 1817"
$Description="Ascom Unite TCP 1817 IP-DECT"
$protocol="TCP"
$portNumbers='1817'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 10147 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 10147-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 10147"
$Description="Ascom Unite TCP 10147 IP-DECT"
$protocol="TCP"
$portNumbers='10147'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 33010 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite IP-DECT 33010-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite IP-DECT 33010"
$Description="Ascom Unite IP-DECT 33010 WebSocket"
$protocol="TCP"
$portNumbers='33010'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 33003 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 33003-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 33003"
$Description="Ascom Unite TCP 33003 Ascom Myco over WebSocket"
$protocol="TCP"
$portNumbers='33003'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 8044 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 8044-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 8044"
$Description="Ascom Unite TCP 8044 Unite View client"
$protocol="TCP"
$portNumbers='8044'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 8045 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 8045-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 8045"
$Description="Ascom Unite TCP 8045 Unite View Web API"
$protocol="TCP"
$portNumbers='8045'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite LDAP TCP 389 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite LDAP TCP 389-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite LDAP TCP 389"
$Description="Ascom Unite LDAP TCP 389"
$protocol="TCP"
$portNumbers='389'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite LDAP SSL 636 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite LDAP SSL 636-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite LDAP SSL 636"
$Description="Ascom Unite LDAP SSL 636"
$protocol="TCP"
$portNumbers='636'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite LDAP Central phonebok 3268 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite LDAP Central phonebok 3268-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite LDAP Central phonebok 3268"
$Description="Ascom Unite LDAP Central phonebok 3268"
$protocol="TCP"
$portNumbers='3268'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite LDAP Central phonebok SSL 3269 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite LDAP Central phonebok SSL 3269-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite LDAP Central phonebok SSL 3269"
$Description="Ascom Unite LDAP Central phonebok SSL 3269"
$protocol="TCP"
$portNumbers='3269'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 10153 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 10153-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 10153"
$Description="Ascom Unite TCP 10153 Device Manager"
$protocol="TCP"
$portNumbers='10153'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite HTTP 7919 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 7919-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 7919"
$Description="Ascom Unite File download to devices over HTTP"
$protocol="TCP"
$portNumbers='7919'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 10146 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 10146-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 10146"
$Description="Ascom Unite TCP 10146 DECT devices are put in DECT chargers, to Device Manager"
$protocol="TCP"
$portNumbers='10146'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 10147 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 10147-Inbound” -ErrorAction SilentlyContinue)) {
$protocolName="Ascom Unite TCP 10147"
$Description="Ascom Unite TCP 10147 DECT devices are put in DECT chargers, to Device Manager"
$protocol="TCP"
$portNumbers='10147'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 10176 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 10176-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 10176"
$Description="Logon (IPBS)/IP DECT Gateway (IPBL) to Device Manager"
$protocol="TCP"
$portNumbers='10176'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 10217 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 10217-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 10217"
$Description="Ascom Unite TCP 10217 Logon Ascom Myco DECT to DeviceManager Manager"
$protocol="TCP"
$portNumbers='10217'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 1321 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 1321-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 1321"
$Description="Ascom Unite TCP 1321 OAP v3"
$protocol="TCP"
$portNumbers='1321'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 1322 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 1322-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 1322"
$Description="Ascom Unite TCP 1322 OAP"
$protocol="TCP"
$portNumbers='1322'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite UDP 3217 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite UDP 3217-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite UDP 3217"
$Description="Ascom Unite UDP 3217 UUS"
$protocol="UDP"
$portNumbers='3217'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite HTTP 8181 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite HTTP 8181-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite HTTP 8181"
$Description="Ascom Unite HTTPS 8181"
$protocol="TCP"
$portNumbers='8181'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
#
# Add Ascom Unite TCP 1433 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 1433-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 1433"
$Description="Ascom Unite TCP 1433 SQL communication"
$protocol="TCP"
$portNumbers='1433'
$direction="Inbound"
$scopes='Domain', 'Public', 'Private'

New-NetFirewallRule `
    -DisplayName "$protocolName-$direction" `
    -Description $Description `
    -Direction $direction `
    -Protocol $protocol `
    -LocalPort $portNumbers `
    -Profile $scopes `
    -Action Allow }
