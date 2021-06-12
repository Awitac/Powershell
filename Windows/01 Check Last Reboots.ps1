# Scripts that check the system log for event id 1074 and 6008  
# Output file in c: root "LastReboot.txt"
# 
# Event ID Description
#
# 1074 System has been shutdown by a process/user
#
# 6008 The previous system shutdown at time on date was unexpected
#

$Procs = Get-WinEvent -FilterHashtable @{logname = 'System'; id = 1074,6008} | Format-Table -wrap 
    Out-File -FilePath "C:\LastReboot.txt" -InputObject $Procs -Encoding ASCII -Width 300
        $Procs
