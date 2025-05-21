# Day 20 – Service Management and Uptime Monitoring

##  What I Did
- Used `uptime` to check how long the system has been running and the load average.
- Learned how to list all active services with `systemctl`.
- Inspected the status of important services like SSH.
- Practiced stopping, starting, and restarting services (with caution).
- Checked for any failed systemd services using `systemctl --failed`.
- Used `who` to see logged-in users.

##  Key Commands
```bash
uptime
systemctl list-units --type=service
systemctl status ssh
systemctl stop/start/restart ssh
systemctl --failed
who
```
