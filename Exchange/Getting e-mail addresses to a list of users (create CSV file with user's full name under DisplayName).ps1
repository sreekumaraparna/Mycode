$UserNames = Import-Csv -Path "C:\Users\AparnaSreekumar\Downloads\Staff memebers.csv"
foreach ($un in $UserNames)
{
$DisplayName = $un.DisplayName
# Get email address from display name using filter parameter
Get-AzureADUser -Filter "displayName eq '$DisplayName'" | Select-Object DisplayName, Mail
}