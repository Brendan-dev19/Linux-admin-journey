#Dy 24 – Mastering the `find` Command & Cleaning Up Files with Scripts

##  What I Learned

Today, I focused on mastering the `find` command — one of the most powerful tools in a sysadmin's toolkit for locating and manipulating files across the filesystem.

###  Core Concepts Practiced

- **Finding specific files:**
  ```bash
  find ~ -type f -name "*.log"
```
-type f = files only
 -name "*.log" = match .log files

## Using mtime to find files by modification time:
``` bash
find ~ -type f -mtime -1   # Modified in the last 1 day
find ~ -type f -mtime +5   # Modified more than 5 days ago
```
## Finding Files by Size 
``` bash 
find ~ -type f -size +5M   # Larger than 5MB
```
## Deliting files that match a pattern 
``` bash
find ~ -type f -size +5M   # Larger than 5MB
```
