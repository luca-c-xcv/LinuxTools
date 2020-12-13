# LinuxTools

### dsm - DualScreen Manager

It is a script to to more easily control the dual-screen configuration.<br/>
At the first run, the first option to launch is `-ck` which prints at the standard output the name of the two monitor connected to the system. Copy the two names into the relative variables in the script (`MONITORRT` for the right screen - `MONITORLT` for the left screen). After this task it's possible to execute the script with the other options:
- `-on` to turn-on the right monitor
- `-off` to turn-off the right monitor
- `-prt` to put the left monitor in portrait mode
- `-norm` to put the left monitor in landscape mode
- `-h` to print the help message