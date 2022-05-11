# Creatated by Awitac 
# Changes                                                                              ES 2021-06-16 
# 
# Script will create inbound and Ountbound rules for Unite Axess
#    
# IP Ports for Unite Axess Server Inbound
#    Unite TCP   443     Unite Axess (https) Standalone Axess server
#    Unite TCP   444     Unite Axess (https) Shared PS / Axess server
#    Unite TCP   29911   Unite Axess Websocket
#
#            NOTE: Depending on the Axess installation remove rule 443 or 444   
#
#            NO GARANTIES! ALWAYS CONFIRM THE RULES AFTER RUNNING THE SCRIPT
#
#######################################################################################################
# 
#
# Add Ascom Unite Axess TCP 443 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite Axess 443-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite Axess 443"
$Description="Ascom Unite Axess HTTPS 443"
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
#
# Add Ascom Unite Axess TCP 444 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite Axess 444-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite Axess 444"
$Description="Ascom Unite Axess HTTPS 444"
$protocol="TCP"
$portNumbers='444'
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
#
# Add Ascom Unite Axess Websocket 29912 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom Unite Axess 29912-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom Unite Axess 29912"
$Description="Ascom Unite Axess Websocket 29912"
$protocol="TCP"
$portNumbers='29912'
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
#
