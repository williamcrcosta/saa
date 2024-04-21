Add-WindowsFeature -Name Web-Server -IncludeManagementTools;
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False;

wget "https://download.visualstudio.microsoft.com/download/pr/00397fee-1bd9-44ef-899b-4504b26e6e96/ab9c73409659f3238d33faee304a8b7c/dotnet-hosting-8.0.4-win.exe" -OutFile C:\dotnet-hosting-8.0.4-win.exe;

C:\dotnet-hosting-8.0.4-win.exe /quiet

wget "https://stodiskdesafio.blob.core.windows.net/saa/Sistema.zip" -OutFile C:\Sistema.zip;
Expand-Archive C:\Sistema.zip -DestinationPath C:\inetpub\wwwroot\


Stop-IISSite -Name "Default Web Site";

New-IISSite -Name "Sistema" -bindingInformation="*:80:" -PhysicalPath "C:\inetpub\wwwroot\Sistema\Sistema"

New-IISSite -Name "Dashboard" -bindingInformation="*:8080:" -PhysicalPath "C:\inetpub\wwwroot\Sistema\Dashboard"

