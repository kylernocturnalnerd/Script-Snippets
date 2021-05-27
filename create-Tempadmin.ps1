#Generate temporary password

# Settings
$ts = New-TimeSpan -Hours 2 # Time before account expires
$PasswordLength=13          # Password Length
$NonAlphaChar=5             # The number of non Alphabetical Characters

Add-Type -AssemblyName 'System.Web'

$Password = [System.Web.Security.Membership]::GeneratePassword($PasswordLength,$NonAlphaChar)
$EncPassw = ConvertTo-SecureString $Password -AsPlainText -Force

# Generate expire time for account
$unixtime = [int][double]::Parse((Get-Date -UFormat %s))
$exptime = (get-date) + $ts

# Create new temp admin with unixtime name
new-localuser -Name "$unixtime-tmpadmin" -AccountExpires $exptime -Password $EncPassw -UserMayNotChangePassword > $null
# Add to groups
Add-LocalGroupMember -Group "Administrators" -Member "$unixtime-tmpadmin"
Add-LocalGroupMember -Group "Remote Desktop Users" -Member "$unixtime-tmpadmin"

write-host ""
write-host " Below are your new credentials:"
write-host "  Username: $unixtime-tmpadmin"
write-host "  Password: $Password"
write-host "  The account will expire: $exptime"
write-host ""