# Creatated by Awitac 
# Changes                                                         ES/SA 2021-06-18 
###################################################################################
# Script that checks a spesific rabbitmq que. 
# 
# $vhost = "%2F" = if you have / as vhost then you need to enter %2F as vhost
#
##################################################################################
#
#
# Check RabbitMQ on remote server
$username = "admin"
$password = "changeme"
$hostname = "awitac-node1"
$vhost = "%2F"
$queue = "Log Collector.M0_wdy_Lv0qaXxgEFQppQA"
$base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $username,$password)))

Invoke-WebRequest -Headers @{Authorization=("Basic {0}" -f $base64AuthInfo)} -Uri ("http://{0}:15672/api/queues/{1}/{2}" -f $hostname, $vhost, $queue) 
