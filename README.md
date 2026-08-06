##This script allows you to record your screen, bypassing that "Streaming" icon on status bar. 

#ROOT IS REQUIRED FOR THIS SCRIPT!!

##This is for educational purposes only and do not use this script to record when someone else is using your device or any other illegal actions.



#USAGE:

##Clone the repository and make the script executable:

```bash
git clone https://github.com/TheNoobDevSynapse/SilentRecord4Termux
cd SilentRecord4Termux
chmod +x record.sh
```
##Make sure Termux has root permission on your root manager.

##You don't have to run `su` command, the script automatically runs as root.

# IMPORTANT:
##This script saves screen recordings as 3 minute files each, since it can hit Android limitations, but it will automatically create a new file and keep recording after 3 minutes.


#TO MANUALLY KILL THE SCRIPT IN A DIFFERENT SESSION:
##Use this command to manually stop the script in a new session if it doesn't stop with Ctrl+C (which it should) or if you accidentaly close the session and it keeps recording:

```bash
pkill -2 screenrecord && pkill -f "Movies/ScreenRecords"
```

##This should kill the script. Or you can just reboot the device if this doesn't work (it should work and you shouldn't need this if you don't do anything stupid)