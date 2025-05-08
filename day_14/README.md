# Day 14 – Cron Automation with Logging

Today I explored cron jobs more deeply by:

- Creating a `timed_logger.sh` script that logs timestamps every minute
- Setting up crontab to automate the script
- Redirecting standard output and error logs to:
  - `cron_output.log` – success logs
  - `cron_debug.log` – error logs

