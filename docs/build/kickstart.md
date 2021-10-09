# Starting the Simulation

## Scheduling tasks

In Linux, a service called cron will execute the commands that you have specified in your settings. I added a [**crontab.txt**](https://github.com/lsandini/cgmsim/blob/main/crontab.txt) sample file to thegithub repository and to your install folder for reference. It should look like this:
```
SHELL=/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

0 */6 * * * cd /home/MYUSERNAME/cgmsim && /bin/bash perlin.sh
*/5 * * * * cd /home/MYUSERNAME/cgmsim && /bin/bash get-all.sh
*/5 * * * * cd /home/MYUSERNAME/cgmsim && /bin/bash upload-cgmsim.sh
```

For this, in your Linux terminal, type crontab -e (and select nano or vi as your favourite text editor). Look at the sample file, and copy the lines in your own crontab.

the first line reinitialises the perlin noise generator every 6 hours.

the second line launches the downloading process of previous SGV data etc, every 5 minutes

the third line launches the calculations and uploads the new computed sgv values to NS, every 5 minutes.

2 more lines are commented out, but allow to use the simulator as a CSII (insulin pump) simulator and link the simulator to openAPS, Loop, FreeAPS, AndroidAPS, etc...