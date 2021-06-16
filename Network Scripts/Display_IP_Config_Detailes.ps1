# Creatated by Awitac 
# Changes                                                                              ES 2021-06-16 
# 
# Display VLAN ID, Speed, Connection status
Get-NetAdapter | ft 
# Display IP Adress
Get-NetIPAddress | Format-Table
# Display IP Config
Get-NetIPConfiguration -Detailed 
