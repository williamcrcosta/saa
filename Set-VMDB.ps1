#Disable Windows Firewall
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False;

#Download Packages
wget "https://stodiskdesafio.blob.core.windows.net/saa/Sistema.zip" -OutFile C:\Sistema.zip;

#Expand Packages and Remove Files
Expand-Archive C:\Sistema.zip -DestinationPath C:\databases

Remove-Item -Path C:\databases\Sistema\Sistema -Recurse
Remove-Item -Path C:\databases\Sistema\Dashboard -Recurse

<# #Import DataBases
Import-DataBases -Database C:\databases\Sistema.mdf -Log C:\databases\Sistema.ldf

# Definir o caminho para o utilitário SqlPackage.exe
$sqlPackagePath = "C:\Program Files\Microsoft SQL Server\160\DAC\bin\SqlPackage.exe" # O caminho pode variar com a versão do SQL Server

# Definir informações do banco de dados
$databaseName = "nome_do_banco_de_dados"
$bacpacFilePath = "C:\caminho\para\seu\arquivo.bacpac"

# Importar o arquivo .bacpac
& $sqlPackagePath /a:Import /tsn:localhost /tdn:$databaseName /sf:$bacpacFilePath #>
