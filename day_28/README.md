# Day 28 – Secure Folder Access with Users and Groups

Today’s task focused on deepening our understanding of user and group permissions in Linux. We simulated a real-world scenario: creating a secure directory (`/secure_data`) that only a specific group of users can access.

##  Tasks Performed

```bash
# 1. Create a secure directory
sudo mkdir /secure_data

# 2. Create a group to manage access
sudo groupadd securegroup

# 3. Add a new user and assign them to the group
sudo useradd -m -s /bin/bash devuser
sudo usermod -aG securegroup devuser

# 4. Set the group ownership of the directory
sudo chown :securegroup /secure_data

# 5. Set permissions so only group members can access
sudo chmod 770 /secure_data

# 6. Test access by switching to the new user
su - devuser
cd /secure_data
```

##  Key Concepts

- **Group ownership** controls who else (besides the owner) can access a directory.
- `chmod 770` means:
  - Owner: Read/Write/Execute
  - Group: Read/Write/Execute
  - Others: No Access
- This is a practical method to restrict access to sensitive resources like logs, secrets, or automation scripts.

##  Folder Structure

Inside `Linux-admin-journey/day_28/`:
- `README.md` ← This file

## Reflection Questions

-  Could you recreate this setup from scratch without checking commands?
-  Could you explain group-based permissions to a beginner?
-  Do you understand when to use `chmod 770` vs `chmod 755` ?

## Real-World Use Case

> Imagine `/secure_data` holds cron job logs, SSH keys, or backup scripts. Only members of `securegroup` (like sysadmins) should access it. This simulates basic role-based access control — foundational for scaling secure environments in DevOps.
