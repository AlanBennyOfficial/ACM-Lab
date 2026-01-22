
$SourceFolder = "C:\AutomationLab"
$DestinationFolder = "C:\AutomationLabBackup"


Copy-Item -Path "$SourceFolder\*" -Destination $DestinationFolder -Recurse -Force
