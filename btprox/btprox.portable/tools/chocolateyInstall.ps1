$packageName = 'btprox.portable' # arbitrary name for the package, used in messages
$url = 'http://sourceforge.net/projects/btprox/files/btprox/1.5.0/btprox_1_5_0.zip/download' # download url

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
