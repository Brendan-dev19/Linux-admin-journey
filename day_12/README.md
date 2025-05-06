# Day 12 – Cron Job: Heartbeat Logger

##  What I Did
- Created a script to log system activity every minute 
- Used `crontab` to schedule the script to run automatically 
- Verified log output in `~/logs/heartbeat.log` 

##  Key Commands
- `crontab -e`
- `*/1 * * * *`
- `chmod +x`
- `echo >>`

##  Cron Job Setup

To run the `log_heartbeat.sh` script every minute using cron:

```bash
* * * * * /home/ubuntu/Linux-admin-journey/day_12/log_heartbeat.sh
```

This will log System is alive every minute to ~/logs/heartbeat.log.

## Output example 
Mon May 06 12:14:01 UTC 2025: System is alive  
Mon May 06 12:15:01 UTC 2025: System is alive  
Mon May 06 12:16:01 UTC 2025: System is alive
