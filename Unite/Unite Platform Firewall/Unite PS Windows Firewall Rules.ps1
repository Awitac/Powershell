#######################################################################################################
#    Created by Awitac                                                                    ES 2021-06-13 
# 
#    Script will open the needed defafult inbound ports for Unite PS
#
#    NO GARANTIES! ALWAYS CONFIRM THE RULES AFTER RUNNING THE SCRIPT
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
# Add Ascom Unite TCP 33010 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite TCP 33010-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite TCP 33010"
$Description="Ascom Unite TCP 33010 P-DECT system and Unite over WebSocket"
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
