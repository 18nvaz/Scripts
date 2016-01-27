$reportPath = "folder path";
$reportName = "MailboxReport.html";
$Report = $reportPath + $reportName

$header = "
		<html>
		<head>
		<meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>
		<title>Mailbox Report</title>
		<STYLE TYPE='text/css'>
		<!--
		td {
			font-family: Calibri;
			font-size: 11px;
			border-top: 1px solid #999999;
			border-right: 1px solid #999999;
			border-bottom: 1px solid #999999;
			border-left: 1px solid #999999;
			padding-top: 0px;
			padding-right: 0px;
			padding-bottom: 0px;
			padding-left: 0px;
		}
		body {
			margin-left: 5px;
			margin-top: 5px;
			margin-right: 0px;
			margin-bottom: 10px;
			table {
			border: thin solid #000000;
		}
		-->
		</style>
		</head>
		<body>

				<font face='Calibri' color='#337ab7'><h2>Mailbox Report</h2></font>
				

"

Add-Content $Report $header

$tableHeader = "
 <table width='100%'>
	<tr bgcolor=#337ab7>
    <th width='40%' align='center'><font face='Calibri' color='#fff' size='4'><strong>Name</strong></font></th>
	<th width='10%' align='center'><font face='Calibri' color='#fff' size='4'><strong>Mailbox Size</strong></font></th>
	<th width='10%' align='center'><font face='Calibri' color='#fff' size='4'><strong>Item Count</strong></font></th>
	<th width='10%' align='center'><font face='Calibri' color='#fff' size='4'><strong>DB</strong></font></th>	
	<th width='30%' align='center'><font face='Calibri' color='#fff' size='4'><strong>Limit Status</strong></font></th>
	</tr>
	
"
Add-Content $Report $tableHeader



#Write-EventLog -LogName Application -Source MailboxReport -EventId 18 -EntryType Information -Message "Script Started"

$stats = Get-MailboxStatistics -Server <mail server> | where {$_.StorageLimitStatus -ne "NoChecking" -and $_.StorageLimitStatus -ne "BelowLimit"}| sort-object totalitemsize -descending | select DisplayName, @{name="MailboxSize";expression={$_.TotalItemSize.Value.ToMB()}}, ItemCount, DatabaseName, StorageLimitStatus
$length = $stats.Length - 1

for($i = 0; $i -le $length; $i++){
	$Name = $stats[$i].DisplayName
	$Size = $stats[$i].MailboxSize
	$Count = $stats[$i].ItemCount
	$DB = $stats[$i].DatabaseName
	$Status = $stats[$i].StorageLimitStatus

	if($Status -eq 'ProhibitSend'){
		$color = '#d9534f'
	}

	if($Status -eq 'IssueWarning'){
		$color = '#f0ad4e'
	}

    $dataRow = "
		<tr>
        	<td width='40%' bgcolor='$color'>$Name</td>
		<td width='10%' bgcolor='$color' align='Center'>$Size</td>
		<td width='10%' bgcolor='$color' align='Center'>$Count</td>
		<td width='10%' bgcolor='$color'>$DB</td>
		<td width='30%' bgcolor='$color'>$Status</td>
		</tr>
	"

	Add-Content $Report $dataRow;
}

Add-Content $Report "</table></body></html>"

#Email
$user = "Recipient email"
Write-Host "Sending email"
$smtpServer = "mail server"
$smtp = New-Object Net.Mail.SmtpClient($smtpServer)
$msg = New-Object Net.Mail.MailMessage
$msg.To.Add($user)
$msg.From = "Sender email"
$msg.Subject = "Mailbox Report"
$msg.IsBodyHTML = $true
$msg.Body = get-content $Report
$smtp.Send($msg)

#Write-EventLog -LogName Application -Source MailboxReport -EventId 18 -EntryType Information -Message "EMail Sent"

Remove-Item MailboxReport.html
