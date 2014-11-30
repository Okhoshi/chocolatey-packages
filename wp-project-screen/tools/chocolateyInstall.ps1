$packageName = 'wp-project-screen'
$installerType = 'EXE'
$url = 'http://www.microsoft.com/en-us/download/confirmation.aspx?id=42536'
$silentArgs = '/qn'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes