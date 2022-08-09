$rootpath = "C:\scripts\taxcycleupdates"
$url = "https://get.taxcycle.com/TaxCycleSetup.exe"
$filename = "TaxCycleSetup.exe"
$outpath = "$rootpath/TaxCycleSetup.exe"
# Download the update
function download-taxcycle {
    param(
        $rootpath,
        $url,
        $outpath
    )
    if (!(test-Path -Path $rootpath)){New-Item -Path $rootpath -ItemType Directory} # Sanity Check
    Invoke-WebRequest -Uri $url -OutFile $outpath
}
# Install the update
function install-taxcycle {
    param(
        $outpath
    )
    
    Start-Process -Filepath "$outpath" -ArgumentList "/s"
}
# Check if the downloaded file is newer
function compare-version {
    param(
        $oldfile,
        $newfile
    )
    $oldversion = get-item "$oldfile"|select -ExpandProperty VersionInfo|select FileVersion
    $newversion = get-item "$newfile"|select -ExpandProperty VersionInfo|select FileVersion
    if ($newversion.fileversion -gt $oldversion.fileversion){
        return $True
    }
}

## the main script

# Move old file to mark it and out of the way for new file
Move-Item -Path $outpath -Destination "$rootpath/TaxCycleSetupOld.exe"

# Download
Download-Taxcycle -rootpath $rootpath -url $url -outpath $outpath

# Check if we need to install
if (compare-version -oldfile "$rootpath/TaxCycleSetupOld.exe" -newfile $outpath){
    install-taxcycle -outpath $outpath
    }

# Clean up
Remove-Item -Path "$rootpath/TaxCycleSetupOld.exe"
