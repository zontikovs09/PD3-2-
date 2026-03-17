Get-Process -Name msedge |
Where-Object {$_.WorkingSet -gt 150MB} |
Select-Object ProcessName, Id, WorkingSet