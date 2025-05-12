# Day 16 – Process Management and Monitoring

##  What I Did

- Learned how to identify running processes using `ps`, `htop`, and `grep`.
- Understood the concept of **PIDs (Process IDs)** — unique numbers assigned to each process.
- Practiced monitoring and controlling active processes.
- Simulated a long-running process using `sleep` and tracked it.
- Took a snapshot of all my system operations using `top -b -n 1 > ~/day_16/system_snapshot.txt
`
---

##Key Commands Used


# View all running processes
ps aux

# View all running processes and filter for a specific one (e.g. "sleep")
ps aux | grep sleep

# Run a background process
sleep 1000

# Monitor all active processes interactively
htop

# Kill a process using its PID
kill <PID>

The output After running htop was :

ubuntu  146786  0.0  0.2  6112  1000 pts/0 S+  14:10   0:00 sleep 1000
ubuntu  146861  0.0  0.2  7076  1176 pts/1 S+  14:16   0:00 grep --color=auto sleep
.
The PID for the running sleep process was 146786.

The second line is just grep detecting itself.

 
