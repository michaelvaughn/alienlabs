$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument '-ExecutionPolicy ByPass -f "\ProgramData\osquery\alienvault-agent.ps1" update'
$trigger =  New-ScheduledTaskTrigger -Daily -At 8:15pm
Register-ScheduledTask -Action $action -Trigger $trigger -AsJob -User SYSTEM -RunLevel Highest -TaskName "Agent Update Check" -Description "Update agent if new version available."
