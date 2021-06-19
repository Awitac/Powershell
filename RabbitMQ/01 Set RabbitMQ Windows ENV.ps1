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
[System.Environment]::SetEnvironmentVariable('RABBITMQ_BASE','%PROGRAMDATA%\RabbitMQ',[System.EnvironmentVariableTarget]::Machine)
