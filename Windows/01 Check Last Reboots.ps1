# Scripts that check the system log for event id 1074 "Last restarts of the system. 
# Output file in c: root "LastReboot.txt"
# 
# Event ID Description
#
# 1074 System has been shutdown by a process/user
#
# 6008 The previous system shutdown at time on date was unexpected
#
# 6013 The system uptime is number seconds 

$Procs = Get-WinEvent -FilterHashtable @{logname = 'System'; id = 1074,6008} | Format-Table -wrap 
    Out-File -FilePath "C:\LastReboot.txt" -InputObject $Procs -Encoding ASCII -Width 300
        $Procs