$logs = Get-EventLog -LogName Application -EntryType Warning -After (Get-Date).AddDays(-3)

$logs | Out-File "$env:USERPROFILE\Documents\Warnings.txt"

$logs |
Group-Object Source |
Sort-Object Count -Descending |
Select-Object -First 3 |
Out-File "$env:USERPROFILE\Documents\Warnings.txt" -Append