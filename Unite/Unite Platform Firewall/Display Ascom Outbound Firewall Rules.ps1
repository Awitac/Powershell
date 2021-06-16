# Creatated by Awitac 
# Changes                                                                              ES 2021-06-16 
# 
# Script will check for all Ascom Outbund rules
#    
#
#######################################################################################################
#
#
#
Get-NetFirewallRule -Displayname "Ascom*" | Where { $_.Direction -eq "Outbound"  } | 
Format-Table -Property DisplayName,DisplayGroup,
@{Name='Protocol';Expression={($PSItem | Get-NetFirewallPortFilter).Protocol}},
@{Name='LocalPort';Expression={($PSItem | Get-NetFirewallPortFilter).LocalPort}},
@{Name='RemotePort';Expression={($PSItem | Get-NetFirewallPortFilter).RemotePort}},
@{Name='RemoteAddress';Expression={($PSItem | Get-NetFirewallAddressFilter).RemoteAddress}},
Enabled,Profile,Direction,Action

