$packageName = 'openvpn' # arbitrary name for the package, used in messages
$tools = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'EXE' #only one of these: exe, msi, msu
$url = '{{DownloadUrl}}' # download url
$url64 = '{{DownloadUrlx64}}' # 64bit URL here or remove - if installer decides, then use $url
$silentArgs = '/S /SELECT_SERVICE=0 /SELECT_EASYRSA=1' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Start-ChocolateyProcessAsAdmin "certutil -addstore 'TrustedPublisher' '$tools\openvpn.cer'"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes