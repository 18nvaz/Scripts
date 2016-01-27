#REQUIRED: Cisco UCS PowerTool

$username = "username"
$pass = "password"
$secpass = ConvertTo-SecureString $pass -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ($username, $secpass)

connect-ucs <ucs ip> -Credential $cred

$dt =  date -Format ddMMyyyyhhmm
$File = "path to backup folder" + $dt
Backup-Ucs -PreservePooledValues -Type config-all -PathPattern $File

Disconnect-Ucs
