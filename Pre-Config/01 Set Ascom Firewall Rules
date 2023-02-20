# Creatated by Awitac 
# Changes                                                                                                      ES 2023-02-19
#
#############################################################################################################################
#
#    * Defines a list of ports to choose from, with the UDP/TCP protocol specified
#    * Prompts the user to select which ports to open in the Windows Firewall
#    * Converts the selected port numbers to an array
#    * Opens each selected port in the Windows Firewall and checks if the rule already exists
#    * Adds the new rule to the firewall if it doesn't already exist
#    * Displays the final output to the user, listing the new rules added and any rules that were skipped because they already existed
#    * Displays all rules in a table
#    * Optinal: Starts the Windows Defender Firewall with Advanced Security console using the Start-Process cmdlet
# 
#############################################################################################################################
#
# Define list of ports to choose from, with UDP/TCP protocol specified
$ports = @(
    @{Number='443,8181';   Protocol='TCP'; Description='Unite Basic'}
    @{Number=3217;         Protocol='UDP'; Description='Unite Basic'}
    @{Number='5672,15672'; Protocol='TCP'; Description='RabbitMQ Unencrytpted'}
    @{Number='5671,15672'; Protocol='TCP'; Description='RabbitMQ Encrypted'}
    @{Number='7919,10153'; Protocol='TCP'; Description='Unite Device Manager'}
    @{Number='444,29912';  Protocol='TCP'; Description='Axess On UPS'}
    @{Number='443,29912';  Protocol='TCP'; Description='Axess Standalone'}
    @{Number=1322;         Protocol='TCP'; Description='Unite OAP'}
    @{Number=1323;         Protocol='TCP'; Description='Unite OLP'}
    @{Number='1817,10147'; Protocol='TCP'; Description='Unite IP-DECT'}
    @{Number='33000,33001';Protocol='TCP'; Description='Unite WLAN'}
    @{Number=6666;         Protocol='TCP'; Description='My back door'}
)

# Prompt user to select ports to open
Write-Host "Select one or multiple ports to open in the Windows Firewall (Separate Multiple Choices With Commas):" -ForegroundColor Cyan
for ($i = 0; $i -lt $ports.Count; $i++) {
    Write-Host "$($i+1). $($ports[$i].Protocol) $($ports[$i].Number) $($ports[$i].Description)"
}
$selectedPorts = Read-Host "Enter the numbers of the ports to open"

# Convert selected port numbers to an array
$selectedPortIndices = $selectedPorts.Split(",")
$selectedPortsAndProtocols = foreach ($index in $selectedPortIndices) {
    # Check if the selected port index specifies a range of port numbers
    if ($index -match '^\d+-\d+$') {
        # Split the range of port numbers and add them to the selected port list
        $range = $index -split '-'
        $rangeStart = [int]$range[0]
        $rangeEnd = [int]$range[1]
        for ($i = $rangeStart; $i -le $rangeEnd; $i++) {
            $ports | Where-Object { $_.Number -eq $i } # Add the matching port to the selected ports and protocols list
        }
    }
    # Check if the selected port index specifies a single port number
    elseif ($index -match '^\d+$') {
        $ports[$index-1] # Add the matching port to the selected ports and protocols list
    }
}

# Open each selected port in the Windows Firewall and check if the rule already exists
$rulesAdded = @()
$rulesSkipped = @()
foreach ($port in $selectedPortsAndProtocols) {
    $ruleName = "Ascom $($port.Description) Port $($port.Number) $($port.Protocol)"
    # Check if the rule already exists
    if (Get-NetFirewallRule | Where-Object { $_.DisplayName -eq $ruleName }) {
        $rulesSkipped += $port
        Write-Host "Firewall rule already exists for $($port.Protocol) $($port.Number) $($port.Description)" -ForegroundColor Yellow
    } else {
        # Add the new rule to the firewall
        try {
            netsh advfirewall firewall add rule name=$ruleName dir=in action=allow protocol=$($port.Protocol) localport=$($port.Number) | Out-Null
            $rulesAdded += $port
            Write-Host "Firewall rule added for $($port.Protocol) $($port.Number) $($port.Description)" -ForegroundColor Green
        } catch {
            # Catch any errors that occur while adding the rule
            Write-Host "Failed to add firewall rule for $($port.Protocol) $($port.Number) $($port.Description): $_" -ForegroundColor Red
        }
    }
}

# Display final output
if ($rulesAdded.Count -gt 0) {
    Write-Host "`nFirewall rules added for the following ports:" -ForegroundColor Green
    foreach ($port in $rulesAdded) {
        Write-Host "$($port.Protocol) $($port.Number) $($port.Description)" -ForegroundColor Green
    }
} else {
    Write-Host "`nNo new firewall rules were added." -ForegroundColor Red
}

Start-Sleep -Seconds 1
if ($rulesSkipped.Count -gt 0) {
    Write-Host "`nFirewall rules already existed for the following ports:" -ForegroundColor Yellow
    foreach ($port in $rulesSkipped) {
        Write-Host "$($port.Protocol) $($port.Number) $($port.Description)" -ForegroundColor Yellow
    }
} else {
    Write-Host "`nNo existing firewall rule were found, addeding rule!" -ForegroundColor Cyan
}

Write-Host "Display all Ascom Inbound Firewall Rules" -ForegroundColor Cyan

# Display all Ascom Rules
Get-NetFirewallRule -DisplayName "Ascom*" | Where-Object { $_.Direction -eq "Inbound" } |
Format-Table DisplayName, DisplayGroup, 
@{Name='Protocol';Expression={($_ | Get-NetFirewallPortFilter).Protocol}}, 
@{Name='LocalPort';Expression={($_ | Get-NetFirewallPortFilter).LocalPort}}, 
@{Name='RemotePort';Expression={($_ | Get-NetFirewallPortFilter).RemotePort}}, 
@{Name='RemoteAddress';Expression={($_ | Get-NetFirewallAddressFilter).RemoteAddress}}, Enabled, Profile, Direction, Action -AutoSize -Wrap | Out-String -Stream | ForEach-Object { Write-Host $_ -ForegroundColor Green }


# Keap script running until user press exit
Read-Host -Prompt "Press Enter to exit"

# Use the Start-Process cmdlet to start the Windows Defender Firewall with Advanced Security console
## Start-Sleep -Seconds 3
## Start-Process -FilePath "mmc.exe" -ArgumentList "wf.msc"
#
