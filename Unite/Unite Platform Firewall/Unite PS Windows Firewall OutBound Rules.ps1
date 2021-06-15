#  Changes                                                                         ES 2021-06-13 
#  Changes                                                                         ES 2021-06-15 
# 
#  Script will open the Outbound ports for Unite PS
#    
# IP Ports between Unite Admin and Elise3 modules
#    Unite TCP   443    Unite Web traffic (https)
#    Unite TCP   10170  Unite module communication
#
# IP Ports between VoWiFi System and Unite
#    Unite TCP   33000  Unite VoWiFi
#    Unite TCP   33010  Unite VoWiFi WebSocket
#
# IP Ports between DECT System and Unite
#    Unite TCP   12346  Unite IP-DECT Messaging between IP-DECT system and Unite module
#    Unite TCP   33010  Unite IP-DECT WebSocket
#           
# IP Ports between LDAP Server and Unite
#    UNITE TCP	 389    Unite LDAP
#    UNITE TCP	 636    Unite LDAP SSL
#    UNITE TCP	 3268	Unite LDAP Central phonebok
#    UNITE TCP	 3269	Unite LDAP Central phonebok SSL
#
# IP Ports for Unite AM/Unite PS
#    Unite UDP   3217   Unite UUS
#    Unite HTTP  8181   Unite Supervisor Web interface (http)
#           
#
#            NO GARANTIES! ALWAYS CONFIRM THE RULES AFTER RUNNING THE SCRIPT
#
#######################################################################################################
#
#
# Add Ascom Unite HTTPS 443 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite HTTPS 443-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite HTTPS 443"
$Description="Ascom Unite HTTPS 443"
$protocol="TCP"
$portNumbers='443'
$direction="Outbound"
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
#
# Add Ascom Unite TCP 10170 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 10170-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 10170"
$Description="Ascom Unite TCP 10170 Unite module communication"
$protocol="TCP"
$portNumbers='10170'
$direction="Outbound"
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
#
# Add Ascom Unite TCP 33000 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite VoWiFi TCP 33000-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite VoWiFi TCP 33000"
$Description="Ascom Unite TCP 33000 VoWiFi device"
$protocol="TCP"
$portNumbers='33000'
$direction="Outbound"
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
#
# Add Ascom Unite VoWiFi TCP 33010 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite VoWiFi 33010-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite VoWiFi 33010"
$Description="Ascom Unite TCP 33010 VoWiFi WebSocket"
$protocol="TCP"
$portNumbers='33010'
$direction="Outbound"
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
#
# Add Ascom Unite TCP 12346 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite IP-DECT 12346-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite IP-DECT 12346"
$Description="Ascom Unite TCP 12346 Unite IP-DECT Messaging between IP-DECT system and Unite module"
$protocol="TCP"
$portNumbers='1817'
$direction="Outbound"
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
#
# Add Ascom Unite TCP 33010 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite DECT 33010-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite DECT 33010"
$Description="Ascom Unite DECT 33010 P-DECT system and Unite over WebSocket"
$protocol="TCP"
$portNumbers='33010'
$direction="Outbound"
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
#
#
# Add Ascom Unite LDAP TCP 389 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite LDAP TCP 389-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite LDAP TCP 389"
$Description="Ascom Unite LDAP TCP 389"
$protocol="TCP"
$portNumbers='389'
$direction="Outbound"
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
# Add Ascom Unite LDAP SSL 636 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite LDAP SSL 636-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite LDAP SSL 636"
$Description="Ascom Unite LDAP SSL 636"
$protocol="TCP"
$portNumbers='636'
$direction="Outbound"
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
# Add Ascom Unite LDAP Central phonebok 3268 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite LDAP Central phonebok 3268-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite LDAP Central phonebok 3268"
$Description="Ascom Unite LDAP Central phonebok 3268"
$protocol="TCP"
$portNumbers='3268'
$direction="Outbound"
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
# Add Ascom Unite LDAP Central phonebok SSL 3269 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite LDAP Central phonebok SSL 3269-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite LDAP Central phonebok SSL 3269"
$Description="Ascom Unite LDAP Central phonebok SSL 3269"
$protocol="TCP"
$portNumbers='3269'
$direction="Outbound"
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
#
# Add Ascom Unite UDP 3217 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite UDP 3217-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite UDP 3217"
$Description="Ascom Unite UDP 3217 UUS"
$protocol="UDP"
$portNumbers='3217'
$direction="Outbound"
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
#
# Add Ascom Unite HTTP 8181 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite HTTP 8181-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite HTTP 8181"
$Description="Ascom Unite HTTPS 8181"
$protocol="TCP"
$portNumbers='8181'
$direction="Outbound"
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
