# Restart the shell : 1666537241
function Restart-Shell() {
  if( [bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544") )
  { Start-Process PowerShell -Verb RunAs ; exit }
  else { Start-Process PowerShell ; exit }
}
