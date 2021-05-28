#====================================================================================================================
# To set global impersonation
#====================================================================================================================

Function Global-Impersonation {
    try{Enable-OrganizationCustomization}
    catch{ echo "$Error"}
    Finally{
        echo "An error occured or org customization is already enabled, read the above error to be sure."
    }
$user= read-host -prompt 'Input impersonation user'
New-ManagementRoleAssignment -Role ApplicationImpersonation -User $user
}

#====================================================================================================================
# Exchange File Filter
#====================================================================================================================
Function filter-Filetype{

   Function Get-FileName($initialDirectory)
   {
       [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
       
       $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
       $OpenFileDialog.initialDirectory = $initialDirectory
   #   $OpenFileDialog.filter = "CSV (*.csv)| *.csv" # Uncomment and change to get specific file types
       $OpenFileDialog.ShowDialog() | Out-Null
       $OpenFileDialog.filename
      $OpenFileDialog.Description = "Select a File"
   }

    $Keywords=Get-Filename
    New-TransportRule -Name "Filetype Block" -AttachmentExtensionMatchesWords $Keywords
}

#====================================================================================================================
# Get Mailbox aliases
#====================================================================================================================
# get mailboxes and iterate through each email address and shows it either primary or an alias
Function get-Aliases{
 get-mailbox | foreach{
  $host.UI.Write("Blue", $host.UI.RawUI.BackGroundColor, "`nUser Name: " + $_.DisplayName+"`n")
  for ($i=0;$i -lt $_.EmailAddresses.Count; $i++)
  {
     $address = $_.EmailAddresses[$i]
     $host.UI.Write("Blue", $host.UI.RawUI.BackGroundColor, $address.AddressString.ToString()+"`t")
     if ($address.IsPrimaryAddress)
     { 
     	$host.UI.Write("Green", $host.UI.RawUI.BackGroundColor, "Primary Email Address`n")
     }
    else
    {
     	$host.UI.Write("Green", $host.UI.RawUI.BackGroundColor, "Alias`n")
    }
  }
 }
}

#====================================================================================================================
# Get Distribution lists
#====================================================================================================================

Function get-DistLists{
 $Groups = Get-DistributionGroup
 $Groups | ForEach-Object {
 $group = $_.Name
 $members = ''
 Get-DistributionGroupMember $group | ForEach-Object {
        If($members) {
               $members=$members + ";" + $_.Name
            } Else {
               $members=$_.Name
            }
   }
 New-Object -TypeName PSObject -Property @{
       GroupName = $group
       Members = $members
      }
 } | Export-CSV "C:\Distribution-Group-Members.csv" -NoTypeInformation -Encoding UTF8
}
#====================================================================================================================
Function Get-FuncList{
   write-Host "get-DistLists\n\tLists Distrribution groups in Active Directory"
   write-Host "get-Aliases\n\tLists all mailboxes and if they have an Alias + What aliases it has"
   write-Host "filter-Filetype\n\tUploads a filetype list from a txt file to block via Mail Rule."
   write-Host "Global-ImpersonationUser\n\tCreates global impersonation for a user. Useful for mail migrations/Mailbox auditting"
}