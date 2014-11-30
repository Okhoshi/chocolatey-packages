#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one

$packageName = 'btprox.install' # arbitrary name for the package, used in messages
$installerType = 'EXE' #only one of these: exe, msi, msu
$url = 'http://sourceforge.net/projects/btprox/files/btprox/1.5.0/btprox_1_5_0.exe/download' # download url
$silentArgs = '/S' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

# main helpers - these have error handling tucked into them already
# installer, will assert administrative rights
# if removing $url64, please remove from here
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes