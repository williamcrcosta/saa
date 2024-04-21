Install-WindowsFeature RemoteAccess;
Install-WindowsFeature DirectAccess-VPN -IncludeManagementTool;
Install-WindowsFeature Routing -IncludeManagementTools;
#Set-DeployVPNOnlyMode;
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False;
#Remove-Item -Path "C:\inetpub\wwwroot\iisstart.htm"
#Add-Content -Path "C:\inetpub\wwwroot\iisstart.htm" -Value "TFTEC Cloud - Azure Architecture Week - SAA"



