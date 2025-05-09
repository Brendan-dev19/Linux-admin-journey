#  Day 15 – Disk Usage & Storage Inspection

##  What I Did
- Learned how to use `df` and `du` to inspect disk space and directory sizes.
- Practiced identifying space-heavy files and directories using command-line tools.
- Created a script (`disk_usage_report.sh`) to generate a quick disk usage report with timestamped output.

---

##  Key Commands

```bash
df -h
```
Then i used these to run a script(check the script file) that 

-Prints a timestamp

-Shows overall system disk space

-Lists the top 10 largest items in the home directory

## Output examples 

Disk Usage Report for Wed May 8 14:04:21 UTC 2025
==============================
Filesystem      Size  Used Avail Use% Mounted on
/dev/root        30G   15G   14G  52% /
...

Top 10 largest directories in home:
2.1G    /home/ubuntu/Videos
700M    /home/ubuntu/Downloads
...

