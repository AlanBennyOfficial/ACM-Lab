# create configuration 
Configuration InstallClient{
    Node "localhost" {
        file IISFolder {
            DestinationPath = "C:\GitHub\ACM-Lab\inetpub\wwwroot\"
            type = "Directory"
            Ensure = "Present"
        }
    }
}
# create file and folder
Script EnableIIS {
    DependsOn = "[File]IISFolder"
    Get-Script = {
        return @{
            Result = (Get-WindowsOptionalFeature -Online -Name Web-Server).Installed
        }
    }
}
# create window options

# HTML page
