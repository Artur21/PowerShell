$a = Get-Date
$process = Get-Process notepad -ErrorAction silentlycontinue
if ($process) {
  $process_status = "Service runing"  + " - " + $a
   $process_status >> "C:\log\proc_found.txt"
   }
else {
   $process_status = "Service not found"  + " - " + $a
   $process_status >> "C:\log\porc_not_found.txt"
     $process_start=  Start-Process -FilePath  "notepad"
}
