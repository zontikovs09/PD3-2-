Get-Process |
Where-Object {$_.WorkingSet -gt 150MB -and $_.Name -Ne "msedge" } |
Select-Object Name, Id, WorkingSet |
Export-CSV -Path "$env:USERPROFILE\Documents\LielieProcesi.csv"
