#!/bin/bash
echo "$(date): Cron job executed" >> ~/cron_jobs/cron_output.log

date >> ~/cron_jobs/timestamps.txt
