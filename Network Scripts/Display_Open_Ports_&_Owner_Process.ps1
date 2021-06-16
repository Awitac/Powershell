# Creatated by Awitac 
# Changes                                                                              ES 2021-06-16 
# 
#######################################################################################################
#
# Display open ports and owning process
get-nettcpconnection | where {($_.State -eq "Listen") -and ($_.RemoteAddress -eq "0.0.0.0")} | select LocalAddress,LocalPort,RemoteAddress,RemotePort,State,OwningProcess,@{Name="Process";Expression={(Get-Process -Id $_.OwningProcess).ProcessName}} | ft 
