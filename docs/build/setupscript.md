# Setting up your personal environment

The "environment" means the details of the simulated subject, and the Nightscout website URL and API secret. They are centralized and stored in the simulator's folder, in a file called .env. This file's contents are later called from various scripts. Creating this file is simplified by launching this interactive this script:

```
bash install_env.sh
```

You will be presented with the 9 following questions:

1. What is the weight in kg ?
   
2. What is the longest absorption time for slowly absorbing meals (in minutes) ?
   
3. What is the peak action time (e.g. 55 min for Fiasp, 75 min for Novorapid) ?
   
4. What is the total duration of insulin action or DIA (e.g. 5 hours for Fiasp or Novorapid) ?
   
5. What is your typical ISF ? 
   
6.  What is your typical CR (carb ratio, in g/U)?
   
7.  What is your "MYNIGHTSCOUT" part of your Nightscout site URL? (i.e. https://MYNIGHTSCOUT.herokuapp.com)?
   
8.  What is your Nightscout API_SECRET (i.e. myplaintextsecret; It should be at least 12 characters long)?

When all questions are answered, a (hidden) file named **.env** is created.

If necessary, to verify that the .env file has been created correctly, type the following command and the contents of the file will be displayed.
```
cat .env 
```
If you have made errors when answering the 9 questions, you can edit the file by typing:

```
nano .env
```

After editing the .env file, close nano by pressing CTRL+X, and when prompted to save the modifications, press Y.

Finally, and since the perlin noise generator runs automatically but only once a day, it will be launched for the first time at the end of this script. Now the environment is set, and we still need to [kickstart the simulation, and set timers to make sure all the scripts are run every 5 minutes](kickstart.md).
