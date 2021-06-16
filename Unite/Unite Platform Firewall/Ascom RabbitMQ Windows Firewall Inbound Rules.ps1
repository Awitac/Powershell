# Creatated by Awitac 
# Changes                                                                              ES 2021-06-16 
# 
# Script will create inbound for a RabbitMQ cluster installation
#    
# IP Ports for RabbitMQ Nodes Inbound
#    RabbitMQ TCP   15672   RabbitMQ Management and monitoring of RabbitMQ WEB
#    RabbitMQ TCP   4369    RabbitMQ Used by Erlang Port Mapper Daemon (epmd) DNS
#    RabbitMQ TCP   5671    RabbitMQ Unite publish and consume messages on the port (encrypted)
#    RabbitMQ TCP   5672    RabbitMQ Unite publish and consume messages on the port
#    RabbitMQ TCP   25672   RabbitMQ Used for inter-node and CLI communication
#    RabbitMQ TCP   35672-35682      Used by CLI to communinicate between nodes
#
#
#######################################################################################################
# 
#
# Add Ascom RabbitMQ TCP 15672 Inbound 
if (-not( Get-NetFirewallRule -DisplayName “Ascom RabbitMQ 15672-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom RabbitMQ 15672"
$Description="Ascom RabbitMQ TCP 15672 Web management"
$protocol="TCP"
$portNumbers='15672'
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
# Add Ascom RabbitMQ TCP 4369 Inbound
if (-not( Get-NetFirewallRule -DisplayName “Ascom RabbitMQ 4369-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom RabbitMQ 4369"
$Description="Ascom RabbitMQ TCP 4369 Erlang Port Mapper Daemon (epmd)"
$protocol="TCP"
$portNumbers='4369'
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
# Add Ascom RabbitMQ TCP 5671 Inbound
if (-not( Get-NetFirewallRule -DisplayName “Ascom RabbitMQ 5671-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom RabbitMQ 5671"
$Description="Ascom RabbitMQ TCP 5671, Unite publish and consume messages on the port"
$protocol="TCP"
$portNumbers='5671'
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
# Add Ascom RabbitMQ TCP 5672 Inbound
if (-not( Get-NetFirewallRule -DisplayName “Ascom RabbitMQ 5672-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom RabbitMQ 5672"
$Description="Ascom RabbitMQ TCP 5672, Unite publish and consume messages on the port"
$protocol="TCP"
$portNumbers='5672'
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
# Add Ascom RabbitMQ TCP 25672 Inbound
if (-not( Get-NetFirewallRule -DisplayName “Ascom RabbitMQ 25672-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom RabbitMQ 25672"
$Description="Ascom RabbitMQ TCP 25672, inter-node and CLI communication"
$protocol="TCP"
$portNumbers='25672'
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
# Add Ascom RabbitMQ TCP 35672-35682 Inbound
if (-not( Get-NetFirewallRule -DisplayName “Ascom RabbitMQ 35672-35682-Inbound” -ErrorAction SilentlyContinue)) { 
$protocolName="Ascom RabbitMQ 35672-35682"
$Description="Ascom RabbitMQ TCP 35672-35682,Used by CLI to communinicate between nodes"
$protocol="TCP"
$portNumbers='35672-35682'
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
