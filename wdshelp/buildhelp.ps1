# buildhelp.ps1
$helpdirs = get-childitem -path 'C:\apps\windirstatsrcgit\wdshelp\' -Attributes d
$outdir = 'C:\apps\windirstatsrcgit\help\'
$HHC="C:\Program Files (x86)\HTML Help Workshop\hhc.exe"
foreach ($helpdir in $helpdirs){
	Write-Output "Building from $($helpdir)"
	start-process $hhc -ArgumentList "$($helpdir)\windirstat.hhp" -NoNewWindow -wait
}