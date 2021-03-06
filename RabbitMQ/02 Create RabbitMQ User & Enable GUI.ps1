# Creatated by Awitac 
# Changes                                                         ES/SA 2021-06-19 
###################################################################################
# 
# Step 1
# Create a new RabbitMQ, adds the user to administrator group and create
# user permission to vhost "/"
#
# Step 2
# Enable RabbitMQ WEB GUI
#
###################################################################################
#
# \rabbitmqctl.bat path
$rabbitctlpath = 'C:\Program Files\RabbitMQ Server\rabbitmq*\sbin'   
#
# NEW RabbitMQ user and password 
$RabbitMQUsername = 'toor'
$RabbitMQPassword = 'root'
$RabbitloginInfo = "$RabbitMQUsername $RabbitMQPassword"
Start-Process -filepath cmd.exe -WorkingDirectory $rabbitctlpath -ArgumentList "/c rabbitmqctl.bat add_user $RabbitloginInfo" -Wait
Start-Process -filepath cmd.exe -WorkingDirectory $rabbitctlpath -ArgumentList "/c rabbitmqctl.bat set_user_tags $RabbitMQUsername administrator" -Wait
Start-Process -filepath cmd.exe -WorkingDirectory $rabbitctlpath -ArgumentList "/c rabbitmqctl.bat set_permissions -p / $RabbitMQUsername "".*"" "".*"" "".*"" " -Wait
#
# \rabbitmq-plugins.bat path
$rabbitpluginpath = 'C:\Program Files\RabbitMQ Server\rabbitmq*\sbin'
Start-Process -filepath cmd.exe -WorkingDirectory $rabbitpluginpath -ArgumentList '/c rabbitmq-plugins.bat enable rabbitmq_management' -Wait
