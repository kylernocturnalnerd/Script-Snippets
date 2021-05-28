$site = Read-Host -prompt "Copy and paste the sharepoint site URL here"
Connect-PnPOnline –Url $site –Credentials (Get-Credential)
$ctx = Get-PnPContext
$ctx.Site.DisableAppViews = $true;
$ctx.Site.DisableFlows = $true;
$ctx.ExecuteQuery();