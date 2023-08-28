# MagicMirror² Updater

This is a simple script to update your [MagicMirror²](https://github.com/MichMich/MagicMirror/tree/master) to the latest version. I run this on my Raspberry Pi (your mileage may vary).

## Installation

1. Make a backup folder in the same directory as your MagicMirror² folder. I called mine `backup`.

```
mkdir backup
```

2. Make a script file and copy the contents of `update.sh` into it. I called mine `update.sh`.

```
nano update.sh
```

3. Make the script executable.

```
chmod +x update.sh
```

4. Run the script. (run as sudo if you get permission errors)

```
sudo ./update.sh
```

5. If you run into any git errors, make sure to have fast-forwarding enabled to only pull.

```
git config --global pull.ff only
```


## What does it do?
1. Run apt update and upgrade commands to update your Raspberry Pi.
2. Backup config.js and modules folders to the backup folder. (you can add more files/folders to backup if you want)'
3. Pull the latest MagicMirror² code from GitHub.
4. Restore config.js and modules folders from the backup folder.