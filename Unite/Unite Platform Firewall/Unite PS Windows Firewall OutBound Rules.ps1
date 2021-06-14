#######################################################################################################
#    Created by Awitac                                                                    ES 2021-06-14 
# 
#    Script will open the needed defafult Outbound ports for Unite PS
#
#       Following rules will be added
#           Unite TCP   443     Unite trafic  
#           Unite HTTP  8181    Healtcheck
#           Unite TCP   10153   Device Manager
#           Unite HTTP  7919    Device File download
#           Unite UDP   3217    Unite UUS 
#           Unite TCP   1321    Unite OAP v3
#           Unite TCP   1322    Unite OAP 
#           Unite TCP   33000   Unite VoWiFi
#           Unite TCP   33001   Unite VoWiFi
#           Unite TCP   33003   Ascom Myco WebSocket
#           Unite TCP   33010   Unite IP-DECT WebSocket
#           Unite TCP   1817    Unite IP-DECT
#           Unite TCP   10147   Unite IP-DECT
#           Unite TCP   8044    Unite View Client
#           Unite TCP   8045    Unite View API
#           Unite TCP   10170   Unite module communication
#           Unite TCP   1433    Default SQL communication
#
#    NO GARANTIES! ALWAYS CONFIRM THE RULES AFTER RUNNING THE SCRIPT
#
#######################################################################################################
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
# Add Ascom Unite TCP 10153 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 10153-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 10153"
$Description="Ascom Unite TCP 10153 Device Manager"
$protocol="TCP"
$portNumbers='10153'
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
# Add Ascom Unite HTTP 7919 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 7919-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 7919"
$Description="Ascom Unite File download to devices over HTTP"
$protocol="TCP"
$portNumbers='7919'
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
# Add Ascom Unite TCP 1321 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 1321-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 1321"
$Description="Ascom Unite TCP 1321 OAP v3"
$protocol="TCP"
$portNumbers='1321'
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
# Add Ascom Unite TCP 1322 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 1322-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 1322"
$Description="Ascom Unite TCP 1322 OAP"
$protocol="TCP"
$portNumbers='1322'
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
# Add Ascom Unite TCP 33000 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 33000-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 33000"
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
# Add Ascom Unite TCP 33001 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 33001-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 33001"
$Description="Ascom Unite TCP 33001 VoWiFi device"
$protocol="TCP"
$portNumbers='33001'
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
# Add Ascom Unite TCP 33003 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 33003-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 33003"
$Description="Ascom Unite TCP 33003 Ascom Myco over WebSocket"
$protocol="TCP"
$portNumbers='33003'
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
# Add Ascom Unite TCP 33010 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 33010-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 33010"
$Description="Ascom Unite TCP 33010 P-DECT system and Unite over WebSocket"
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
# Add Ascom Unite TCP 1817 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 1817-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 1817"
$Description="Ascom Unite TCP 1817 IP-DECT"
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
# Add Ascom Unite TCP 10147 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 10147-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 10147"
$Description="Ascom Unite TCP 10147 IP-DECT"
$protocol="TCP"
$portNumbers='10147'
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
# Add Ascom Unite TCP 8044 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 8044-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 8044"
$Description="Ascom Unite TCP 8044 Unite View client"
$protocol="TCP"
$portNumbers='8044'
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
# Add Ascom Unite TCP 8045 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 8045-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 8045"
$Description="Ascom Unite TCP 8045 Unite View Web API"
$protocol="TCP"
$portNumbers='8045'
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
# Add Ascom Unite TCP 1433 Outbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 1433-Outbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 1433"
$Description="Ascom Unite TCP 1433 SQL communication"
$protocol="TCP"
$portNumbers='1433'
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
