# Day 18 – File Copying & Permissions Practice

##  What I Did

- Learned how to copy files using `cp`.
- Practiced preserving file metadata with the `-p` flag.
- Verified copied file contents using `cat`.
- Practiced echoing text into files using `echo`.
- Transferred a screenshot from my local Windows machine to the EC2 server using `scp`.

---

##  Key Commands

```bash
# Create folders
mkdir -p ~/Linux-admin-journey/day_18/source
mkdir -p ~/Linux-admin-journey/day_18/destination

# Create and populate files
echo "File A" > ~/Linux-admin-journey/day_18/source/a.txt
echo "File B" > ~/Linux-admin-journey/day_18/source/b.txt

# Copy file without preserving metadata
cp ~/Linux-admin-journey/day_18/source/a.txt ~/Linux-admin-journey/day_18/destination/

# Copy file with metadata preserved (timestamps, permissions)
cp -p ~/Linux-admin-journey/day_18/source/a.txt ~/Linux-admin-journey/day_18/destination/

# Confirm copied contents
cat ~/Linux-admin-journey/day_18/destination/a.txt
cat ~/Linux-admin-journey/day_18/destination/b.txt

# From Windows terminal - Upload image to EC2 (Day 18 folder)
scp -i C:\Users\brens\Downloads\linux.pem "C:\Users\brens\OneDrive\Pictures\Screenshots\Screenshot (119).png" ubuntu@<your-ec2-ip>:~/Linux-admin-journey/day_18/

```

Folder structure after these tasks 

```css 
day_18/
├── destination/
│   ├── a.txt
│   └── b.txt
├── source/
│   ├── a.txt
│   └── b.txt
└── Screenshot (119).png
```
