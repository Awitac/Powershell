# Creatated by Awitac 
# Changes                                                         ES/SA 2021-06-18 
###################################################################################
#
# Step 1
# Copy .erlang.cookie  from  "c:\windows\system32\config\systemprofile\
# to curent user system profile
# 
# Step 2
# Copy modified erlang cookie to Document foler
#
##################################################################################
#
# Copy .erlang.cookie to curent user profile
Copy-Item "$env:windir\System32\config\systemprofile\.erlang.cookie" -Destination $env:USERPROFILE -Force
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
