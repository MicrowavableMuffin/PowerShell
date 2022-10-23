# Personal profile.ps1 : 1666541638

$fn_list = $( Get-ChildItem $env:UserProfile\scrit ).fullname
$fn_list |Sort -Descending| ForEach-Object { . $_ }
