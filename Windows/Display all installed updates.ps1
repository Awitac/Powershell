# Creatated by Awitac 
# Changes                                                         ES/SA 2021-06-23
###################################################################################
#
#  Display all installed updates
# 
##################################################################################


    $Session = New-Object -ComObject “Microsoft.Update.Session”

    $Searcher = $Session.CreateUpdateSearcher()

    $historyCount = $Searcher.GetTotalHistoryCount()

    $Result = $Searcher.QueryHistory(0, $historyCount) | Select-Object Date,

      @{name=”Operation”; expression={switch($_.operation)

           {

               1 {“Installation”};

               2 {“Uninstallation”};

               3 {“Other”}

           }}},

      @{name=”Status”; expression={switch($_.resultcode)

           {

               1 {“In Progress”};

               2 {“Succeeded”};

               3 {“Succeeded With Errors”};

               4 {“Failed”};

               5 {“Aborted”}

           }}},

      @{name=”Update”; expression={IF($_.Title.tostring() -match “\(.*?\)”){$matches[0].replace(‘(‘,”).replace(‘)’,”)}}},

      Title

    $Result | Where{$_.Date -gt (Get-Date).AddDays(-365)} | Sort-Object Date -Descending | Select Date,Operation,Status,Update,Title | Format-Table
