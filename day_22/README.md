#  Linux Admin Journey – Day 22


---

## ✅ What I Did Today

- Created a new user with `adduser`
- Switched between users using `su - username`
- Created a group using `groupadd`
- Added the user to a group with `usermod -aG`
- Created a shared directory and used `chown` and `chmod` to manage group access

---

## 🔧 Commands Practiced

```bash
# Create a new user
sudo adduser devuser

# Switch to new user and back
su - devuser
exit

# Create a new group
sudo groupadd devgroup

# Add user to the group (append safely)
sudo usermod -aG devgroup devuser

# Confirm group membership
groups devuser

# Create a directory and assign group ownership
mkdir ~/Linux-admin-journey/day_22/dev_files
sudo chown :devgroup ~/Linux-admin-journey/day_22/dev_files

# Set permissions so only the group can access
chmod 770 ~/Linux-admin-journey/day_22/dev_files

