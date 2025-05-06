# Day 12 – Cron Job: Heartbeat Logger

## What I Did
- Created a script to log system activity every minute
- Used `crontab` to schedule the script to run automatically
- Verified log output in `~/logs/heartbeat.log`

## Key Commands
- `crontab -e`
- `*/1 * * * *`
- `chmod +x`
- `echo >>`

## Output Example

 ``` Mon May 06 12:14:01 UTC 2025: System is alive Mon May 06 12:15:01 UTC 2025: System is alive Mon May 06 12:16:01 UTC 2025: System is alive ```
