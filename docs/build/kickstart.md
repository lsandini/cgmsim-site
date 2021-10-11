# Starting the Simulation

## Scheduling tasks

In Linux, a service called cron will execute the commands that you have specified in your settings. I added a [**crontab.txt**](https://github.com/lsandini/cgmsim/blob/main/crontab.txt) sample file to the Github repository and to your install folder for reference. It should look like this:
```
SHELL=/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

0 */6 * * * cd /home/MYUSERNAME/cgmsim && /bin/bash perlin.sh
*/5 * * * * cd /home/MYUSERNAME/cgmsim && /bin/bash get-all.sh
*/5 * * * * cd /home/MYUSERNAME/cgmsim && /bin/bash upload-cgmsim.sh
#30 23 * * * cd /home/MYUSERNAME/cgmsim && /bin/bash surprise.sh
```

You will need to edit this lines to match your personal settings, then copy-paste the edited lines in your own crontab. I suggest you first copy-pase these lines into notepad or the text editor of your choice in Windows or MacOS. 

**Replace "MYUSERNAME" with your own Linux username !**

**Replace "cgmsim" with your own CGMSIM installation folder name !**

Then, in your Linux terminal, type:
```
crontab -e 
```
Select nano (or vi) as your favourite text editor. You can now delete the whole content of the crontab file, then copy-paste your own modified lines from your windows/MacOS text editor into your crontab. Close crontab by pressing CRTL + X, when prompted to save the new file, enter Y.

1. The first line reinitialises the perlin noise generator every 6 hours.
   
2. The second line launches the downloading process of previous SGV data, treatments, etc, every 5 minutes.
   
3. The third line launches the calculations and uploads the new computed sgv values to NS, every 5 minutes.
   
4. The fourth line is commented out with a **#** sign by default. If you remove the **#** sign, CGMSIM will compute at 11:30PM the total amount of carbs eaten during the day, and issue a meal completing the 200g grams target for the 24h period, without mealtime insulin !

The sample file contains 2 more lines, that are commented out. They allow to use the simulator as a CSII (insulin pump) simulator and link the simulator to openAPS, Loop, FreeAPS, AndroidAPS, etc... This requires other modifications to the code not presented here. I'll add details later on request.

!!! warning "Hosting many simulators on one Linux machine ?"
    In case your Raspberry Pi is hosting many instances of the simulator, new lines are added after the previous ones, since the crontab will orchestrate all the simulators in one file.


<br>
## Kickstart the simulation !

It's time to upload your first Sensor Glucose Values (SGVs) to your Nightscout website. This way CGMSIM will have a starting point for its first calculations. In your terminal, type :

```
node kickstart-simulation.js
```
In a second or two, your Nightscout website should display 3 SGVs of 5 mmol/l or 80 mg/dl. Yay ! :smiley:

Now wait for a new value. It might take up to 5-10 minutes for the next value to appear, but without intervention from you, the glucose level will climb slowly due to the endogenous glucose production (EGP), until it reaches 22.2 mmol/l or 400 mg/dl. (A low limit of 2.2 mmol/l or 40 mg/dl has also set, to avoid interruptions in the Nightscout SGV curve).

You are now in charge of your virtual T1D patient, who needs food and insulin to survive. [Next, we'll see how to declare meals and insulins in Nightscout, and how to review the treatment results](../operate/overview.md).
