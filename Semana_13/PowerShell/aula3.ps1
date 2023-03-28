New-Alias rename rename-item
New-Alias d get-childitem
echo "Oi, João"

$profile

New-Item $profile

Get-Help about_ExecutionPolicy

Get-ExecutionPolicy

Set-ExecutionPolicy Unrestricted

Get-Help about_*

Get-Help about_profiles

$Profile.AllUsersAllHosts

New-Item $Profile.AllUsersAllHosts
notepad $Profile.AllUsersAllHosts