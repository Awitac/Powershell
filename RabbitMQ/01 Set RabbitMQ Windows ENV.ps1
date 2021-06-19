# Creatated by Awitac 
# Changes                                                         ES/SA 2021-06-19 
###################################################################################
# 
# Add RabbitMQ Windows Environment Variables
#    RABBITMQ_BASE
#    %PROGRAMDATA%\RabbitMQ
#
###################################################################################
#
$Name = 'RABBITMQ_BASE'
$Value = '%PROGRAMDATA%\RabbitMQ'
[System.Environment]::SetEnvironmentVariable($Name,$Value,[System.EnvironmentVariableTarget]::Machine)
