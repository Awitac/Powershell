# Creatated by Awitac 
# Changes                                                         ES/SA 2021-06-19 
###################################################################################
#
#  List Installed Windows Hotfixes
# 
##################################################################################
# Listing Installed Hotfixes
Get-CimInstance -ClassName Win32_QuickFixEngineering | Sort-Object -Property InstalledOn -Descending
