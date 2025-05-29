# 🗂️ Day 25 – Archiving, Compression & Backup Automation

## ✅ What I Practiced Today

Today, I worked on archiving and compressing files, and creating a simple backup script.

###  Tasks Completed

- Created and archived multiple files using `tar`
- Compressed files using `bzip2`
- Decompressed files using `bunzip2`
- Created a shell script (`backup.sh`) to archive and gzip a backup folder
- Ran the script and verified the creation of the archive file

---

##  Key Learnings

- **tar -cvf archive.tar file1 file2**: Archives multiple files into one `.tar` file.
- **tar -xvf archive.tar -C directory**: Extracts archive contents to a specific directory.
- **bzip2 filename**: Compresses the file using bzip2 format.
- **bunzip2 filename.bz2**: Decompresses a `.bz2` file.
- **Shell scripts** can automate repetitive tasks like backups.
- Using `~` instead of `./` still executes the script because `~` expands to the home directory.

---

##  Script Breakdown (`backup.sh`)

```bash
#!/bin/bash
tar -czvf ~/Linux-admin-journey/day_25/backup_$(date +%F).tar.gz /home/ubuntu/Linux-admin-journey/day_25/test_dir
echo "Backup created at ~/Linux-admin-journey/day_25/backup_$(date +%F).tar.gz"
```
