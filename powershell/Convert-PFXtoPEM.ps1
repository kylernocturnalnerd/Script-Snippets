Function Get-FileName($initialDirectory)
{
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
    
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.initialDirectory = $initialDirectory
#    $OpenFileDialog.filter = "CSV (*.csv)| *.csv"
    $OpenFileDialog.ShowDialog() | Out-Null
    $OpenFileDialog.filename
}
$PFX = Get-FileName($PWD)

# extract PEM encrypted
openssl pkcs12 -in $PFX -nocerts -out 'C:\inetpub\cert\PEMenc.key'

# extract crt
openssl pkcs12 -in $PFX -clcerts -nokeys -out 'C:\inetpub\cert\certificate.crt'

# extract unencrypted pem
openssl rsa -in 'C:\inetpub\cert\PEMenc.key' -out 'C:\inetpub\cert\priv.key'
