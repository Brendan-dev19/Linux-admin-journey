# Day 11 – Smart Archiver Script

## What I Did
- Used `find` with `-mtime` to locate `.txt` files older than 2 days
- Used `tar` to compress them into a `.tar.gz` archive
- Named the archive based on today’s date using `$(date)`
- Moved the archive into a separate `archives` directory

## Key Commands Used
- `find`
- `tar -czf`
- `date`
- `chmod +x`

## Files
- `archive_old_files.sh`

## Output
Archive saved to: `~/archives/archived_YYYY-MM-DD.tar.gz`

