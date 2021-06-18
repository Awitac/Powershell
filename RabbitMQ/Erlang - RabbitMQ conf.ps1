# Creatated by Awitac 
# Changes                                                         ES/SA 2021-06-18 
###################################################################################
#
# 
# NOTE: Erlang needs to be installed first
#
# Step 1
# Script will add RabbitMQ Windows Environment Variables,
#    RABBITMQ_BASE
#    %PROGRAMDATA%\RabbitMQ
#
# Step 2
# Script will change the default value of the erlang cookie in 
# "c:\windows\system32\config\systemprofile\.erlang.cookie" 
# to GEOQMMYBBKPAHKDIKYVB.
# 
# After changing the value in the system profile folder the script will do 
# the same for the current logged in user erlang cookie 
# 
# Step 3
# Copy modified erlang cookie to Document foler
#
# Step 4
# Create RabbitMQ folder in Programdata
#
# Step 5
# Create RabbitMQ configuration file with pause minority
#
##################################################################################
#
#
# Check RabbitMQ on remote server
$Name = 'RABBITMQ_BASE'
$Value = '%PROGRAMDATA%\RabbitMQ'
[System.Environment]::SetEnvironmentVariable($Name,$Value,[System.EnvironmentVariableTarget]::Machine)
#
#
# Set Erlang Cookie in "windows\system32\config\systemprofile"
$erlangcookiefile  = "c:\windows\system32\config\systemprofile\.erlang.cookie"
$erlangcookievalue = "GEOQMMYBBKPAHKDIKYVB"
Set-Content -Path $erlangcookiefile -Value $erlangcookievalue -Force
#
#
# Set Erlang Cookie for "CURENT USER"
$erlangcookiefile  = "$ENV:UserProfile\.erlang.cookie"
$erlangcookievalue = "GEOQMMYBBKPAHKDIKYVB"
Set-Content -Path $erlangcookiefile -Value $erlangcookievalue -Force 
#
#
# Save Erlang Cookie in Documents folder
$file = "$ENV:UserProfile\Documents\.erlang.cookie"
if (-not(Test-Path -Path $file -PathType Leaf)) {
     try {
         $null = Copy-Item "c:\windows\system32\config\systemprofile\.erlang.cookie" -destination $ENV:UserProfile\Documents
         Write-Host "The file [$file] has been created."
     }
     catch {
         throw $_.Exception.Message
     }
 }
#
#
# Create RabbitMQ folder in Programdata 
$file = 'C:\ProgramData\RabbitMQ'
if (-not(Test-Path -Path $file -PathType Leaf)) {
     try {
         $null = New-Item -Path 'C:\ProgramData\RabbitMQ' -ItemType Directory
         Write-Host "The file [$file] has been created."
     }
     catch {
         throw $_.Exception.Message
     }
 }
#
# 
# Create RabbitMQ configuration file with pause minority
$file = 'C:\ProgramData\RabbitMQ\rabbitmq.conf'
$partitionhandling = "cluster_partition_handling = pause_minority"      

if (-not(Test-Path -Path $file -PathType Leaf)) {
     try {
         $null = New-Item -Path 'C:\ProgramData\RabbitMQ\rabbitmq.conf' -ItemType File -Value $partitionhandling 
         Write-Host "The file [$file] has been created."
     }
     catch {
         throw $_.Exception.Message
     }
 }


