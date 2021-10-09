# Setting up your personal environment

The "environment" means the details of the simulated subject, and the Nightscout website URL and API secret. They are centralized and stored in the simulator's folder, in a file called .env. This file's contents are later called from various scripts. Creating this file is simplified by launching this interactive this script:

```
bash install_env.sh
```

To verify that the .env file has been created correctly, just type cat .env in your terminal. Finally, and since the perlin noise generator runs automatically but only every few hours, it will be launched for the first time at the end of this script.