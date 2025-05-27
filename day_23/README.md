# Day 23 – Linux File Permissions and Sticky Bit

##  What I Learned

- How to create files and folders using `touch` and `mkdir`
- Understanding and modifying file permissions using:
  - Symbolic notation (`chmod u+x`, `chmod g+w`)
  - Numeric notation (`chmod 754`)
- How to interpret permission strings like `rwxr-xr--`
- How to make a shared folder secure using the **sticky bit** (`chmod 1777`)
- How to verify permissions and metadata using `ls -l` and `ls -ld`
- What `umask` does and how it affects default permissions for new files/folders

## Key Commands

```bash
touch testfile                    # Create a regular empty file
chmod 754 testfile               # Set permissions rwx for owner, r-x for group, r-- for others
mkdir shared_folder              # Create a directory
chmod 1777 shared_folder         # Give everyone full access BUT enable sticky bit
ls -l testfile                   # View permissions and metadata for a file
ls -ld shared_folder             # View permissions and metadata for a directory
umask                            # Check the current user mask

