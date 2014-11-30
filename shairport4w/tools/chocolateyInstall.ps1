$packageName = 'shairport4w' # arbitrary name for the package, used in messages
$url = 'http://sourceforge.net/projects/shairport4w/files/latest/download' # download url
$installerType = 'EXE' #only one of these: exe, msi, msu
$silentArgs = '/S' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url"  -validExitCodes $validExitCodes
