$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
 $logPath = "$env:USERPROFILE\Documents\Servisi.log"
 $services = "Spooler", "wuauserv"

 foreach ($service in $services) {
     $status = (Get-Service -Name $service).Status
     "[$timestamp] Serviss $service ir $status." | Add-Content -Path $logPath -Encoding Default
 }