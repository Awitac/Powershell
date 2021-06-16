# Creatated by Awitac 
# Changes                                                                              ES 2021-06-16 
# 
#######################################################################################################
#
# Check UnitePS on remote server
$IP_Address = "192.168.100.121"

# Check Unite HTTP 
New-Object System.Net.Sockets.TcpClient($IP_Address,8181)

# Check Unite HTTPS 
New-Object System.Net.Sockets.TcpClient($IP_Address,443)

# Check  Unite Fault Notification
New-Object System.Net.Sockets.TcpClient($IP_Address,8124)

# Check Unite Patient Information Service 
New-Object System.Net.Sockets.TcpClient($IP_Address,8114)

# Check Unite Rounding Timer Service
New-Object System.Net.Sockets.TcpClient($IP_Address,8115)

# Check Unite Rounding Timer Event Service
New-Object System.Net.Sockets.TcpClient($IP_Address,8116)

# Check Unite Supervisor port
New-Object System.Net.Sockets.TcpClient($IP_Address,8181)

# Check Unite OAP
New-Object System.Net.Sockets.TcpClient($IP_Address,1322)

# Check Unite Device Manager
New-Object System.Net.Sockets.TcpClient($IP_Address,10153)

# Check Services for Unite View client 
New-Object System.Net.Sockets.TcpClient($IP_Address,8044)

# Check Services for Unite Platform Server Web API
New-Object System.Net.Sockets.TcpClient($IP_Address,8045)

# Check Unite UDP
New-Object System.Net.Sockets.TcpClient($IP_Address,3217)

# Check VoWiFi device
New-Object System.Net.Sockets.TcpClient($IP_Address,33000)

# Check VoWiFi device
New-Object System.Net.Sockets.TcpClient($IP_Address,33001)

# Check Myco 1 & 2 WS
New-Object System.Net.Sockets.TcpClient($IP_Address,33003)
