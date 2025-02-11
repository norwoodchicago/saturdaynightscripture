set ps=C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe
set psparms=-ExecutionPolicy Bypass -NoProfile

%ps% %psparms% -File "fixpsalm.ps1" 

pause