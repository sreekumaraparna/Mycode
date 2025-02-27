Step 1: #Connect to Exchange Online
Connect-ExchangeOnline

Step 2: #Import the list of CSV Files and hold that as a variable name $List
$List = Import-Csv -Path "C:\users\AparnaSreekumar\Downloads\Teams-PSA Members_2023_3_29.csv"

Step 3: #take the $List variable and for each value in that list add them to the Disyribution list named "DL - PSA Members"
$List | ForEach-Object { Add-DistributionGroupMember -Identity "DL - PSA Members" -Member $_.userprincipalName}
