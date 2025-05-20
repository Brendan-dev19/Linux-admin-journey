# Day 19 – System Logging with journalctl & dmesg

##  What I Did
- Learned how to inspect system logs using `journalctl` and `dmesg`
- Used `journalctl -p err` to filter only error messages
- Exported error logs to a `.txt` file for future review or sharing
- Explored `dmesg` and understood kernel log access restrictions on cloud systems

## 🧠 Key Commands

```bash
journalctl -p err                # Show only error-priority logs
journalctl -p err -b            # Show errors from the current boot only
journalctl -p err > journal_errors.txt   # Save error logs to a file

dmesg                            # View kernel logs (requires root)
dmesg | less                     # View with paging
dmesg | tail -n 20               # View the last 20 kernel messages
sudo dmesg                       # Try with sudo if needed
```
 ## Note on dmesg
On cloud or secure systems (like EC2), running dmesg as a normal user may return:

dmesg: read kernel buffer failed: Operation not permitted

This is expected behavior for security reasons.

Prefer using `journalctl` for logs as a regular user.
