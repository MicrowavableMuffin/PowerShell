# Copy the configuration into place : 1666543601
function Configure-PowerShell() {
  $branch = "$env:UserProfile\Documents\WindowsPowerShell"
  $prof = "$PSScriptRoot\profile.ps1"

  if(!( Test-Path -PathType Container $branch )) { mkdir -p $branch }
  Copy-Item -Force -Verbose "$prof"  "$branch\Microsoft.PowerShell_profile.ps1"
  Copy-Item -Recurse -Force "$PSScriptRoot\lib" "$env:UserProfile\scrit"
}

Configure-PowerShell
