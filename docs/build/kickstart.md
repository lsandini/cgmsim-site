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

For this, in your Linux terminal, type:
```
crontab -e 
```
Select nano (or vi) as your favourite text editor. Look at the sample file, and copy the lines in your own crontab.

**Replace MYUSERNAME with your Linux username !**

1. The first line reinitialises the perlin noise generator every 6 hours.
   
2. The second line launches the downloading process of previous SGV data, treatments, etc, every 5 minutes.
   
3. The third line launches the calculations and uploads the new computed sgv values to NS, every 5 minutes.

The sample file contains 2 more lines, that are commented out. They allow to use the simulator as a CSII (insulin pump) simulator and link the simulator to openAPS, Loop, FreeAPS, AndroidAPS, etc... This requires other modifications to the code not presented here. I'll add details later on request.

<br>
## Kickstart the simulation !

It's time to upload your first Sensor Glucose Values (SGVs) to your Nightscout website. This way CGMSIM will have a starting point for its first calculations. In your terminal, type :

```
bash kickstart.sh
```
In a second or two, your Nightscout website should display 3 SGVs of 5 mmol/l or 80 mg/dl. Yay ! :smiley: