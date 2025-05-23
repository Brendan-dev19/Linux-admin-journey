#  Day 21 – System Logs, Journalctl, and SSH Monitoring

##  What I Practiced Today

### 1. **Viewing System Logs**
- Used `less /var/log/syslog` to read the general system log.
- Practiced filtering log entries using `journalctl`.

### 2. **Understanding `journalctl` Options**
- `journalctl -xe`: Shows recent log entries with detailed errors and context.
- `journalctl -u ssh --since "1 hour ago"`: Filtered SSH logs from the past hour.
- `journalctl -u <service_name> --no-pager | tail -n 20`: Displayed the last 20 logs for any service.

### 3. **Reading SSH Logs**
- Used `grep sshd /var/log/auth.log` to filter SSH-related logins and attacks.
- Observed failed login attempts from unknown IPs and users (potential brute force attempts).
- Recognized "Accepted publickey for ubuntu" as successful logins via SSH key.

##  Reflections
- I'm still learning to interpret log patterns, but I now understand how log entries are structured and where to find them.

## 🛠 Commands I Used Today (Add to Cheat Sheet)

```bash
less /var/log/syslog
sudo journalctl -xe
sudo journalctl -u ssh --since "1 hour ago"
journalctl -u <service_name> --no-pager | tail -n 20
grep sshd /var/log/auth.log
```
