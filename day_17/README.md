## Day 17 – File Permissions and umask

- Created test file and folder
- Used `chmod 755` to change file permissions
- Learned that `umask` only applies to new files, not existing ones
- Used `ls -l` to confirm permission changes

### Commands
```bash
touch testfile.txt
mkdir testfolder
chmod 755 testfile.txt
ls -l
```
