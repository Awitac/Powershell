# Creatated by Awitac 
# Changes                                                         ES/SA 2021-06-20 
###################################################################################
# 
# Step 1
# Create a RabbitMQ and basic cluster configuration for pause_minority
#
# Step 2
# Copy configuration file do Document folder
#
###################################################################################
#
# Create RabbitMQ configuration file with pause minority
New-Item -Path 'C:\ProgramData\RabbitMQ\rabbitmq.conf' -ItemType File -Force
Write-Host "The file [$file] has been created."

Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "## Clustering"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "## ====================="
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "##"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "cluster_partition_handling = pause_minority"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "##"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "##"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "## 5671 SSL Encrytion"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "## ====================="
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "##"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "## listeners.ssl.default = 5671"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "## listeners.tcp"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "##"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "## ssl_options.verify = verify_peer"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "## ssl_options.fail_if_no_peer_cert = false"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "## ssl_options.cacertfile = C:\\certs\\ca_certificate.pem"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "## ssl_options.certfile = C:\\certs\\server_certificate.pem"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "## ssl_options.keyfile = C:\\certs\\server_key.pem"
Add-Content C:\ProgramData\RabbitMQ\rabbitmq.conf "##"
#
#
# Copy rabbitmq.conf in Documents folder
Copy-Item 'C:\ProgramData\RabbitMQ\rabbitmq.conf' -destination $ENV:UserProfile\Documents -Force
Write-Host "The file [$file] has been copied."
  
