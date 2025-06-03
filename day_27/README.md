#  Day 27: Log Cleanup, Disk Usage & Automation (Mobile via Termius)

Today focused on checking disk usage, locating large files, cleaning up system logs, and scripting—all done from mobile using **Termius**.

---

## Tasks Completed

### 1. **Checked Disk Usage**
- Displayed mounted filesystem usage:
  ```bash
  df -h
```
  Viewed top-level diskusage
``` bash 
sudo du -h --max-depth=1 /
sudo du -h --max-depth=1 /home
sudo du -sh /var/log
```

### 2. Identified Large Files (Over 50MB)
- Searched system-wide, suppressing permission errors:
``` bash 
sudo find / -type f -size +50M 2>/dev/null
```

### 3. Backed Up & Emptied Log File
- Copied syslog to your day_27 folder:
``` bash
sudo cp /var/log/syslog ~/Linux-admin-journey/day_27/syslog_backup.log
```

- Emptied the original log file (without deleting it):
```bash 
sudo truncate -s 0 /var/log/syslog
```

### 4. Created & Ran a Script Without nano
-  Created a script with echo:
``` bash 
echo -e '#!/bin/bash\ndf -h > ~/Linux-admin-journey/day_27/disk_check.log' > ~/Linux-admin-journey/day_27/disk_check.sh
chmod +x ~/Linux-admin-journey/day_27/disk_check.sh
```

