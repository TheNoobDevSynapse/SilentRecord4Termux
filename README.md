# SilentRecord4Termux

This script allows you to record your screen while bypassing the "Streaming" icon on the status bar.

> [!CAUTION]
> **ROOT IS REQUIRED FOR THIS SCRIPT!**
> 
> Make sure Termux is granted root permissions in your root manager. You do **not** need to run `su` manually—the script automatically runs as root.

> [!WARNING]
> This tool is for **educational purposes only**. Do not use this script to record when someone else is using your device or for any illegal activities.

---

## Installation

Clone the repository and make the script executable:

```bash
git clone https://github.com/TheNoobDevSynapse/SilentRecord4Termux
cd SilentRecord4Termux
chmod +x record.sh
```

## FORCE KILL
Use this command on new session with su access to kill the script manually:

```bash
pkill -2 screenrecord && pkill -f "Movies/ScreenRecords"
```
Or you can reboot your device.