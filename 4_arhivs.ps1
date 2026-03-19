$files = Get-ChildItem "$env:USERPROFILE\Downloads" -Filter *.pdf |
Where-Object { $_.LastWriteTime -gt (Get-Date).AddHours(-48) }

Compress-Archive -Path $files.FullName -DestinationPath "$env:USERPROFILE\Documents\PDF_Backup.zip" -Force