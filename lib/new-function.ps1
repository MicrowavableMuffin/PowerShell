# Write quick-scrit : 1666540007
function New-Function([String]$Name) {
  if($env:editor) { $editor = $env:editor } else { $editor = 'notepad' }
  & $editor $env:UserProfile\scrit\$Name
  Restart-Shell
}
