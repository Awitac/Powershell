Get-ChildItem -Path 'C:\Program Files\erl*\Uninstall.exe' | %{ Start-Process -Wait -NoNewWindow -FilePath $_ -ArgumentList '/S' }
