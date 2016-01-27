[CmdletBinding()]
Param(
  [Parameter(Mandatory=$True,Position=1)]
   [string]$Path,
  [Parameter(Mandatory=$True)]
   [string[]]$FileTypes
)

if($FileTypes -eq "Music" -or $FileTypes -eq "Pictures" -or $FileTypes -eq "Documents" -or $FileTypes -eq "Videos" -or $FileTypes -eq "Archives" -or $FileTypes -eq "PowerShell" -or $FileTypes -eq "Text" -or $FileTypes -eq "Logs" -or $FileTypes -eq "Certificates" -or $FileTypes -eq "CSV" -or $FileTypes -eq "Backups" -or $FileTypes -eq "XML" -or $FileTypes -eq "Batch")
{
		foreach ($Type in $FileTypes){
			Switch ($Type) {
				Music {
					$pt = $Path+"\Music"
					New-Item -ItemType Directory $pt -ea Ignore
					$mp3 = Get-ChildItem -Path $Path -Recurse -Include *.mp3
					$mp3 | Move-Item -Destination $pt  -Force
					$aac = Get-ChildItem -Path $Path -Recurse -Include *.aac
					$aac | Move-Item -Destination $pt  -Force
					$flac = Get-ChildItem -Path $Path -Recurse -Include *.flac
					$flac | Move-Item -Destination $pt  -Force
					$ogg = Get-ChildItem -Path $Path -Recurse -Include *.ogg
					$ogg | Move-Item -Destination $pt  -Force
					$wma = Get-ChildItem -Path $Path -Recurse -Include *.wma
					$wma | Move-Item -Destination $pt  -Force
					$m4a = Get-ChildItem -Path $Path -Recurse -Include *.m4a
					$m4a | Move-Item -Destination $pt  -Force
					$aiff = Get-ChildItem -Path $Path -Recurse -Include *.aiff
					$aiff | Move-Item -Destination $pt  -Force
					Break
				}
				Pictures {
					$pt = $Path+"\Pictures"
					New-Item -ItemType Directory $pt -ea Ignore
					$jpg = Get-ChildItem -Path $Path -Recurse -Include *.jpg
					$jpg | Move-Item -Destination $pt  -Force
					$png = Get-ChildItem -Path $Path -Recurse -Include *.png
					$png | Move-Item -Destination $pt  -Force
					$jpeg = Get-ChildItem -Path $Path -Recurse -Include *.jpeg
					$jpeg | Move-Item -Destination $pt  -Force
					$gif = Get-ChildItem -Path $Path -Recurse -Include *.gif
					$gif | Move-Item -Destination $pt  -Force
					$bmp = Get-ChildItem -Path $Path -Recurse -Include *.bmp
					$bmp | Move-Item -Destination $pt  -Force
					$svg = Get-ChildItem -Path $Path -Recurse -Include *.svg
					$svg | Move-Item -Destination $pt  -Force
					$webp = Get-ChildItem -Path $Path -Recurse -Include *.webp
					$webp | Move-Item -Destination $pt  -Force
					$xps = Get-ChildItem -Path $Path -Recurse -Include *.xps
					$xps | Move-Item -Destination $pt  -Force
					Break
				}
				Documents {
					$pt = $Path+"\Documents"
					New-Item -ItemType Directory $pt -ea Ignore
					$doc = Get-ChildItem -Path $Path -Recurse -Include *.doc
					$doc | Move-Item -Destination $pt  -Force
					$docx = Get-ChildItem -Path $Path -Recurse -Include *.docx
					$docx | Move-Item -Destination $pt  -Force
					$xls = Get-ChildItem -Path $Path -Recurse -Include *.xls
					$xls | Move-Item -Destination $pt  -Force
					$xlsx = Get-ChildItem -Path $Path -Recurse -Include *.xlsx
					$xlsx | Move-Item -Destination $pt  -Force
					$xlsv = Get-ChildItem -Path $Path -Recurse -Include *.xlsv
					$xlsv | Move-Item -Destination $pt  -Force
					$ppt = Get-ChildItem -Path $Path -Recurse -Include *.ppt
					$ppt | Move-Item -Destination $pt  -Force
					$pptx = Get-ChildItem -Path $Path -Recurse -Include *.pptx
					$pptx | Move-Item -Destination $pt  -Force
					$ppsx = Get-ChildItem -Path $Path -Recurse -Include *.ppsx
					$ppsx | Move-Item -Destination $pt  -Force
					$odp = Get-ChildItem -Path $Path -Recurse -Include *.odp
					$odp | Move-Item -Destination $pt  -Force
					$odt = Get-ChildItem -Path $Path -Recurse -Include *.odt
					$odt | Move-Item -Destination $pt  -Force
					$ods = Get-ChildItem -Path $Path -Recurse -Include *.ods
					$ods | Move-Item -Destination $pt  -Force
					$vsd = Get-ChildItem -Path $Path -Recurse -Include *.vsd
					$vsd | Move-Item -Destination $pt  -Force
					$vsdx = Get-ChildItem -Path $Path -Recurse -Include *.vsdx
					$vsdx | Move-Item -Destination $pt  -Force
					$pdf = Get-ChildItem -Path $Path -Recurse -Include *.pdf
					$pdf | Move-Item -Destination $pt  -Force
					Break
				}
				Archives {
					$pt = $Path+"\Archives"
					New-Item -ItemType Directory $pt -ea Ignore
					$zip = Get-ChildItem -Path $Path -Recurse -Include *.zip
					$zip | Move-Item -Destination $pt  -Force
					$rar = Get-ChildItem -Path $Path -Recurse -Include *.rar
					$rar | Move-Item -Destination $pt  -Force
					$7z = Get-ChildItem -Path $Path -Recurse -Include *.7z
					$7z | Move-Item -Destination $pt  -Force
					$gz = Get-ChildItem -Path $Path -Recurse -Include *.gz
					$gz | Move-Item -Destination $pt  -Force
					$bz2 = Get-ChildItem -Path $Path -Recurse -Include *.bz2
					$bz2 | Move-Item -Destination $pt  -Force
					$tar = Get-ChildItem -Path $Path -Recurse -Include *.tar
					$tar | Move-Item -Destination $pt  -Force
					$tgz = Get-ChildItem -Path $Path -Recurse -Include *.tgz
					$tgz | Move-Item -Destination $pt  -Force
					Break
				}
				Videos {
					$pt = $Path+"\Videos"
					New-Item -ItemType Directory $pt -ea Ignore
					$flv = Get-ChildItem -Path $Path -Recurse -Include *.flv
					$flv | Move-Item -Destination $pt  -Force
					$ogv = Get-ChildItem -Path $Path -Recurse -Include *.ogv
					$ogv | Move-Item -Destination $pt  -Force
					$avi = Get-ChildItem -Path $Path -Recurse -Include *.avi
					$avi | Move-Item -Destination $pt  -Force
					$mp4 = Get-ChildItem -Path $Path -Recurse -Include *.mp4
					$mp4 | Move-Item -Destination $pt  -Force
					$mpg = Get-ChildItem -Path $Path -Recurse -Include *.mpg
					$mpg | Move-Item -Destination $pt  -Force
					$mpeg = Get-ChildItem -Path $Path -Recurse -Include *.mpeg
					$mpeg | Move-Item -Destination $pt  -Force
					$3gp = Get-ChildItem -Path $Path -Recurse -Include *.3gp
					$3gp | Move-Item -Destination $pt  -Force
					$wmv = Get-ChildItem -Path $Path -Recurse -Include *.wmv
					$wmv | Move-Item -Destination $pt  -Force
					$mkv = Get-ChildItem -Path $Path -Recurse -Include *.mkv
					$mkv | Move-Item -Destination $pt  -Force
					$srt = Get-ChildItem -Path $Path -Recurse -Include *.srt
					$srt | Move-Item -Destination $pt  -Force
					Break
				}
				PowerShell {
					$pt = $Path+"\PowerShell"
					New-Item -ItemType Directory $pt -ea Ignore
					$ps1 = Get-ChildItem -Path $Path -Recurse -Include *.ps1
					$ps1 | Move-Item -Destination $pt  -Force
					$psm1 = Get-ChildItem -Path $Path -Recurse -Include *.psm1
					$psm1 | Move-Item -Destination $pt  -Force
					Break
				}
				Text {
					$pt = $Path+"\Text"
					New-Item -ItemType Directory $pt -ea Ignore
					$txt = Get-ChildItem -Path $Path -Recurse -Include *.txt
					$txt | Move-Item -Destination $pt  -Force
					Break
				}
				Logs {
					$pt = $Path+"\Logs"
					New-Item -ItemType Directory $pt -ea Ignore
					$log = Get-ChildItem -Path $Path -Recurse -Include *.log
					$log | Move-Item -Destination $pt  -Force
					Break
				}
				CSV {
					$pt = $Path+"\CSV"
					New-Item -ItemType Directory $pt -ea Ignore
					$csv = Get-ChildItem -Path $Path -Recurse -Include *.csv
					$csv | Move-Item -Destination $pt  -Force
					Break
				}
				Certificates {
					$pt = $Path+"\Certificates"
					New-Item -ItemType Directory $pt -ea Ignore
					$cer = Get-ChildItem -Path $Path -Recurse -Include *.cer
					$cer | Move-Item -Destination $pt  -Force
					$pfx = Get-ChildItem -Path $Path -Recurse -Include *.pfx
					$pfx | Move-Item -Destination $pt  -Force
					$p7b = Get-ChildItem -Path $Path -Recurse -Include *.p7b
					$p7b | Move-Item -Destination $pt  -Force
					$csr = Get-ChildItem -Path $Path -Recurse -Include *.csr
					$csr | Move-Item -Destination $pt  -Force
					Break
				}
				Backups {
					$pt = $Path+"\Backups"
					New-Item -ItemType Directory $pt -ea Ignore
					$bak = Get-ChildItem -Path $Path -Recurse -Include *.bak
					$bak | Move-Item -Destination $pt  -Force
					Break
				}
				XML {
					$pt = $Path+"\XML"
					New-Item -ItemType Directory $pt -ea Ignore
					$xml = Get-ChildItem -Path $Path -Recurse -Include *.xml
					$xml | Move-Item -Destination $pt  -Force
					Break
				}
				Batch {
					$pt = $Path+"\BatchFiles"
					New-Item -ItemType Directory $pt -ea Ignore
					$bat = Get-ChildItem -Path $Path -Recurse -Include *.bat
					$bat | Move-Item -Destination $pt  -Force
					Break
				}
			}
		}
}

if($FileTypes -ne $NULL)
{
	foreach ($Type in $FileTypes){
		
		$tp = "*."+$Type
		if($Type -eq 'mp3' -or $Type -eq 'aac' -or $Type -eq 'flac' -or $Type -eq 'ogg' -or $Type -eq 'wma' -or $Type -eq 'm4a' -or $Type -eq 'aiff'){
			$ptm = $Path+"\Music"
			$mus = Get-ChildItem -Path $Path -Recurse -Include $tp
			$mus | Move-Item -Destination $ptm  -Force
		}
		if($Type -eq 'jpg' -or $Type -eq 'png' -or $Type -eq 'jpeg' -or $Type -eq 'gif' -or $Type -eq 'bmp' -or $Type -eq 'svg' -or $Type -eq 'webp' -or $Type -eq 'xps'){
			$ptp = $Path+"\Pictures"
			New-Item -ItemType Directory $ptp -ea Ignore
			$pic = Get-ChildItem -Path $Path -Recurse -Include $tp
			$pic | Move-Item -Destination $ptp  -Force
		}
		if($Type -eq 'doc' -or $Type -eq 'docx' -or $Type -eq 'xls' -or $Type -eq 'xlsx' -or $Type -eq 'xlsv' -or $Type -eq 'ppt' -or $Type -eq 'pptx' -or $Type -eq 'ppsx' -or $Type -eq 'odp' -or $Type -eq 'odt' -or $Type -eq 'ods' -or $Type -eq 'vsd' -or $Type -eq 'vsdx' -or $Type -eq 'pdf'){
			$ptd = $Path+"\Documents"
			New-Item -ItemType Directory $ptd -ea Ignore
			$doc = Get-ChildItem -Path $Path -Recurse -Include $tp
			$doc | Move-Item -Destination $ptd  -Force
		}
		if($Type -eq 'zip' -or $Type -eq 'rar' -or $Type -eq '7z' -or $Type -eq 'gz' -or $Type -eq 'bz2' -or $Type -eq 'tar' -or $Type -eq 'tgz'){
			$pta = $Path+"\Archives"
			New-Item -ItemType Directory $pta -ea Ignore
			$arc = Get-ChildItem -Path $Path -Recurse -Include $tp
			$arc | Move-Item -Destination $pta  -Force
		}
		if($Type -eq 'flv' -or $Type -eq 'ogv' -or $Type -eq 'avi' -or $Type -eq 'mp4' -or $Type -eq 'mpg' -or $Type -eq 'mpeg' -or $Type -eq '3gp' -or $Type -eq 'wmv' -or $Type -eq 'mkv' -or $Type -eq 'srt'){
			$ptv = $Path+"\Videos"
			New-Item -ItemType Directory $ptv -ea Ignore
			$vid = Get-ChildItem -Path $Path -Recurse -Include $tp
			$vid | Move-Item -Destination $ptv -Force
		}	
		if($Type -eq 'ps1' -or $Type -eq 'psm1'){
			$ptps = $Path+"\PowerShell"
			New-Item -ItemType Directory $ptps -ea Ignore
			$ps = Get-ChildItem -Path $Path -Recurse -Include $tp
			$ps | Move-Item -Destination $ptps -Force
		}
		if($Type -eq 'txt'){
			$ptt = $Path+"\Text"
			New-Item -ItemType Directory $ptt -ea Ignore
			$txt = Get-ChildItem -Path $Path -Recurse -Include $tp
			$txt | Move-Item -Destination $ptt  -Force
		}
		if($Type -eq 'log'){
			$ptl = $Path+"\Logs"
			New-Item -ItemType Directory $ptl -ea Ignore
			$log = Get-ChildItem -Path $Path -Recurse -Include $tp
			$log | Move-Item -Destination $ptl  -Force
		}
		if($Type -eq 'csv'){
			$ptc = $Path+"\CSV"
			New-Item -ItemType Directory $ptc -ea Ignore
			$csv = Get-ChildItem -Path $Path -Recurse -Include $tp
			$csv | Move-Item -Destination $ptc  -Force
		}
		if($Type -eq 'cer' -or $Type -eq 'pfx' -or $Type -eq 'p7b' -or $Type -eq 'csr'){
			$ptcr = $Path+"\Certificates"
			New-Item -ItemType Directory $ptcr -ea Ignore
			$crt = Get-ChildItem -Path $Path -Recurse -Include $tp
			$crt | Move-Item -Destination $ptcr  -Force
		}
		if($Type -eq 'bak'){
			$ptb = $Path+"\Backups"
			New-Item -ItemType Directory $ptb -ea Ignore
			$bkp = Get-ChildItem -Path $Path -Recurse -Include $tp
			$bkp | Move-Item -Destination $ptb -Force
		}
		if($Type -eq 'xml'){
			$ptx = $Path+"\XML"
			New-Item -ItemType Directory $ptx -ea Ignore
			$xml = Get-ChildItem -Path $Path -Recurse -Include $tp
			$xml | Move-Item -Destination $ptx -Force
		}
		if($Type -eq 'bat'){
			$ptbt = $Path+"\BatchFiles"
			New-Item -ItemType Directory $ptbt -ea Ignore
			$bat = Get-ChildItem -Path $Path -Recurse -Include $tp
			$bat | Move-Item -Destination $ptbt -Force
		}
	}
}
