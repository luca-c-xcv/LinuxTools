import subprocess
import re

monitors = []
sizes = []

bashCommand1 = "xrandr | grep -w connected | awk '{print $1}'"  # get name of monitor connected
output = subprocess.check_output(bashCommand1, shell=True).decode()
for monitor in output.splitlines(): # put monitor in its array as item
  monitors.append(monitor)

bashCommand = "xrandr | grep -w connected | awk '{print $3, $4}'" # get size and position of monitor
output = subprocess.check_output(bashCommand, shell=True).decode()
for size in output.splitlines():
  if re.search('[0-9]+', size): # check if item has size and position
    sizes.append(size.split('+')) # split item by its position
  else:
    sizes.append([]) # append empty array for monitors connected but not in use

for item in sizes:
    if item and item[1] == "0": # check if array isn't empty and the second item is '0' (it means that is leftmost monitor)
        primary = monitors[sizes.index(item)]

bashCommand2 = "xrandr --output " + primary + " --primary | i3-msg restart"
subprocess.check_output(bashCommand2, shell=True)