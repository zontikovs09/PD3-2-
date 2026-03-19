winget list | Select-String "msstore"

$count = $apps.Count

Write-Output "System have $count aplikacijas no Microsoft Store."