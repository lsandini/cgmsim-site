# Insulin pump mode and DIYAPS

!!! warning "Nerdy stuff ahead !"
    
    This has not been yet fully tested, and you might encounter a few :bug: along the way. You have been warned !
    

While this simulator was built as a training tool for Multiple Daily Injection (MDI) treatment, it can also be used to simulate Continuous Subcutaneous Insulin Infusion (CSII) or more familiarly "insulin pump" therapy. Moreover, it can be coupled to a DIYAPS solution as [openAPS](https://openaps.org).

I have been doing this for a while on a "custom" setup, but now I added the required files to the repository for all to use. 

**I just "fired up the old rig", let's see how it does, LIVE !: **

<iframe style="width: 640px; height: 480px; overflow: hidden;"  scrolling="no" frameborder="0" src="https://dmpkl1.herokuapp.com/"></iframe>
<br>

## Nightscout setup

First of all, make sure that your instance of Nightscout is set to be used with DIAPS systems. It involves adding a few terms in the ENABLE variable of Heroku. You will want to see a pillbox with details about the APS calculations and another one with details about the pumps activity.

[Details on how to setup Nightscout for openAPS here.](https://openaps.readthedocs.io/en/latest/docs/While%20You%20Wait%20For%20Gear/nightscout-setup.html)

[Details on how to setup Nightscout for iOS Loop here.](https://loopkit.github.io/loopdocs/nightscout/update_user/)

<br>

## CGMSIM setup

A couple of modifications are required in order to compute the insulin activity based on what the pump has been administrating. The calculations include the insulin activity from basal rates and from boluses, and not mealtime doses and long-acting agonists anymore.

If you have built an openAPS rig, it will read the pump's memory, and upload the basal profile, other settings and bolus history to Nightscout. We will first setup CGMSIM to download that data from Nightscout.

If you need more info on how to modify your crontab, please check [crontab.guru](https://crontab.guru/) !

**In the suggested crontab for MDI mode, there were 4 lines :**

```
SHELL=/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

0 */6 * * * cd /home/MYUSERNAME/cgmsim && /bin/bash perlin.sh
*/5 * * * * cd /home/MYUSERNAME/cgmsim && /bin/bash get-all.sh
*/5 * * * * cd /home/MYUSERNAME/cgmsim && /bin/bash upload-cgmsim.sh
#30 23 * * * cd /home/MYUSERNAME/cgmsim && /bin/bash surprise.sh
```
<br>
Lines starting with **#** are commented out and will not be executed. Remove the **#** to activate them !

!!! danger "You will need to:"

    - Add a first line pointing to **get-pump.sh**, so that CGMSIM will download pump data from NS  
        
    - Edit the 4th line, so that CGMSIM will upload SGVs based on pump insulin: **upload-cgmsim-pump.sh**  
        
    - Add the 5th line if you want to run your rig unattended with meals issued automatically with matching boluses
      
<br>  

**It should now look like this :**
```
SHELL=/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

*/5 * * * * cd /home/MYUSERNAME/cgmsim && /bin/bash get-pump.sh
0 */6 * * * cd /home/MYUSERNAME/cgmsim && /bin/bash perlin.sh
*/5 * * * * cd /home/MYUSERNAME/cgmsim && /bin/bash get-all.sh
*/5 * * * * cd /home/MYUSERNAME/cgmsim && /bin/bash upload-cgmsim-pump.sh
#0 0 * * * cd /home/MYUSERNAME/cgmsim &&/bin/bash random_meal.sh
#30 23 * * * cd /home/MYUSERNAME/cgmsim && /bin/bash surprise.sh
```

<br>

### Timezone issue on cloud-based Linux VMs

The 5th line specifically triggers the execution of the bash script **random_meal.sh** at midnight 00:00 or 12PM. The 4 meals of the next day are computed (carb amounts and time of delivery).  These are saved in a file, that will be overwritten the next time the script runs, 24 hours later.

The absolute time of the script execution refers to the **timezone where your computer running CGMSIM is located**. If you are using a cloud-based solution, notice the time difference with your location. 

For me, with a DigitalOcean droplet located in Europe, the time difference is +3 hours. So I execute the sript at 21:00 o'clock "server time", which is 24:00 at my location. The line starts with :

```
#0 21 * * * cd /home ...
```

If you are running CGMSIM on a local machine and running the script at midnight, then the line should start with :
```
#0 0 * * * cd /home ...
```

Finally, you have to **uncomment** a line in one of the scripts. Edit **get-all.sh** by typing:
```
nano get-all.sh
```
... and remove the **#** in front of:

```
# node random_meal_upload.js  
```

Then save your changes. Voilà.
<br>
<br>

## Surprise meals

Just as a reminder, the **"surprise"** feature on the 6th and last line of the crontab creates an automatic meal completing the 200g carbs daily goal at 11:30PM. No automatic bolus, so your "late snack" remains untreated. Use with caution :smile:

<br>
<br>
