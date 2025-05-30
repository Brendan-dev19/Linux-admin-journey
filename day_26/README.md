# Day 26 – Automating with Cron Jobs (Linux Task Scheduling)

Today’s focus was on understanding and practicing **cron jobs** — a way to automate repetitive tasks in Linux using the `cron` service.

---

##  What is a Cron Job?

A **cron job** is a scheduled command or script that runs automatically at a specified time or interval. It is powered by the cron daemon (`crond`), which checks a list of scheduled tasks every minute.

---

##  Tasks Completed

### 1. Viewed Existing Cron Jobs

```bash
crontab -l
```

### 2. Wrote a Simple Cron Job
```bash
* * * * * echo "Cron test at $(date)" >> ~/cron_output.txt
```
Added using:

```bash 
crontab -e
```
This command runs every minute, appending a timestamped message to cron_output.txt.

### 3. Verified the Output

``` bash 
cat ~/cron_output.txt
```
Checked if messages were being logged every minute.

### 4. Moved the Output to a Project Folder

```bash
mv ~/cron_output.txt ~/Linux-admin-journey/day_26/
```

### 5. Removed the Cron Job

``` bash
crontab -r
```
