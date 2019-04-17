# Auto-Update Windows Agent

The ‘sched-agent-update.ps1’ script is run once to put the AlienVault Windows agent on a daily update schedule. 


## Getting Started

These instructions will enable auto-updating of your AlienVault Windows agent. Google Update utilizes a similar method of using Windows 'Task Scheduler' to run a command at an interval.  


### Prerequisites

PowerShell 2.0 or higher is required.  

```
PowerShell 2.0 
```

Requires an agent to be running with a version newer than > 19.04.0403.0301. If you have this version or older, you will have to upgrade to the newer version first and then run this script.  


### Installing

1) Open 'sched-agent-update.ps1' in Notepad.
2) Edit the time of day you would like the Scheduled Task to check for an agent update. By default, it is set to 8:15pm.
3) Run the script as Administrator in PowerShell.
4) Profit.


## Confirmation

The agent version will update in the console. This will only occur after a new version is released, so it will not occur every day, but the Scheduled Task set by the script will check daily, so you will no longer have to manually update.


## Deployment

The script could be pulled out or bundled into a package delivery via SCCM, Altiris, or similar systems management software.  
Note: If the agent is installed in a drive other than C:\ this will not work.
