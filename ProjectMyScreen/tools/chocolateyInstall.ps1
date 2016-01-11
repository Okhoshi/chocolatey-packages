$packageName = 'ProjectMyScreen'
$installerType = 'msi'
$url = 'https://download.microsoft.com/download/A/2/7/A271EFFF-6C9E-4E9B-9259-0F72FDEDD153/ProjectMyScreenApp.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes