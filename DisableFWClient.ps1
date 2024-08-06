#Install-WindowsFeature RemoteAccess;
#Install-WindowsFeature DirectAccess-VPN -IncludeManagementTool;
#Install-WindowsFeature Routing -IncludeManagementTools;
#Set-DeployVPNOnlyMode;
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False;
# Install IIS 
Install-WindowsFeature -name Web-Server -IncludeManagementTools
#Remove File
Remove-Item -Path "C:\inetpub\wwwroot\iisstart.htm"
#Add-Content -Path "C:\inetpub\wwwroot\iisstart.htm" -Value "OLIMPIADAS AZURE 2024"
Add-Content -Path "C:\inetpub\wwwroot\iisstart.htm" -Value $("OLIMPIADAS AZURE 2024")
#Telnet Install#
Install-WindowsFeature -name Telnet-Client

