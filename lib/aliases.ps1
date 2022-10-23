# Simplify the calling of certain functions and cmdlets : 1666540395

$alias = @{
  'di'='Date-Integer'
  'ga'='Git-Add'
  'gits'='Git-Status'
  'ln'='New-Link'
  'nlf'='New-Function'
  'rs'='Restart-Shell'
}

$alias.keys | ForEach-Object { Set-Alias $_ $alias[$_] }
