#  Day 29 – Monitoring Tools & .deb Package Basics

Today’s session introduced lightweight resource monitoring tools and the basics of handling `.deb` packages on Ubuntu. You also explored mobile interface limitations using **Termius** and experimented with interactive CLI tools like `nethogs`.

---

## 1. Install and Understand `.deb` Tools

### Install a tool from APT:
```bash
sudo apt install htop
```

### Attempt install via `.deb` file (illustrative):
```bash
sudo dpkg -i package-name.deb
```
*You got a "No such file" error because `package-name.deb` doesn't exist — the command was only for learning purposes.*

---

##  2. Install & Use `nethogs`

### Install `nethogs`:
```bash
sudo apt install nethogs
```

### Run `nethogs` (must be root):
```bash
sudo nethogs
```

### Exit `nethogs`:
While inside the interface, press:
```
q
```

`nethogs` shows per-process bandwidth usage — useful for spotting high-traffic apps in real time.

---

## Terminal too narrow (mobile bug)
I encountered:
```
The terminal is too narrow! Please make it wider. I’ll wait…
```
This is a **display issue** due to mobile terminal width (Termius). Nothing broke — just an interface limit. You exited successfully and reran as needed.

---

