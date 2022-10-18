# LinuxTools

## dsm - DualScreen Manager

It is a script to to more easily control the dual-screen configuration.<br/>
At the first run, the first option to launch is `-ck` which prints at the standard output the name of the two monitor connected to the system. Copy the two names into the relative variables in the script (`MONITORRT` for the right screen - `MONITORLT` for the left screen). After this task it's possible to execute the script with the other options:
- `-onl` to turn-on the left monitor
- `-onr` to turn-on the right monitor
- `-offl` to turn-off the left monitor
- `-offr` to turn-off the right monitor
- `-prt` to put the left monitor in portrait mode
- `-norm` to put the left monitor in landscape mode
- `-h` to print the help message

## cw - Changeable Wallpaper

It's a script useful to download and to setup a new wallpaper. Wallpaper subjects are based on the topics passed to the launch<br/>
**The elements added at the variable must divided by `,`.**

<u>*example*</u>: `cw car,dog,summer`

To automate the script is required to put the script in the `cron` using the command `crontab -e` using the cron syntax ([here for more details](https://help.ubuntu.com/community/CronHowto#Crontab_Lines)) and in the `startup applications` to execute it at system startup.

(The default image resolution is `2560x1600`. You can customise it by deleting these values and using others)

## avi2mkv

For each AVI file in a directory (taken as input), it splits the filename into name and extension. It takes the movie and its subtitles from this directory to create a single MKV file then puts it in the "OK" subdirectory 

## temp

Gets cpu temperature and fan1 rpm from the `sensors` package 

# LeftMonitorPrimary

Gets all connected monitors, their sizes and positions, then sets the left monitor as primary.