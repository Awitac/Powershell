# Listing Installed Hotfixes
Get-CimInstance -ClassName Win32_QuickFixEngineering | Sort-Object -Property InstalledOn -Descending
