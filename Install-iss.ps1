Add-WindowsFeature -Name Web-Server -IncludeManagementTools;
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False;
Remove-Item -Path "C:\inetpub\wwwroot\iisstart.htm"
Add-Content -Path "C:\inetpub\wwwroot\iisstart.htm" -Value "TFTEC Cloud - Azure Architecture Week - SAA";


