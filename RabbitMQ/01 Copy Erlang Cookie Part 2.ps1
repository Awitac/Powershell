# Creatated by Awitac 
# Changes                                                             ES 2021-06-20
###################################################################################
#
#
# Copy .erlang.cookie  from Document folder to curent user system profile folder
# and c:\windows\system32\config\systemprofile
#
#
###################################################################################
#
Copy-Item "$ENV:UserProfile\Documents\.erlang.cookie" -Destination "c:\windows\system32\config\systemprofile" -Force
Copy-Item "$ENV:UserProfile\Documents\.erlang.cookie" -Destination $env:USERPROFILE -Force
