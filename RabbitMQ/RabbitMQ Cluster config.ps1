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
