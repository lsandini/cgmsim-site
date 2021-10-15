# Downloading the simulator 

## Cloning the repository

Log into your Ubuntu terminal, and then run this command :

```
git clone https://github.com/lsandini/cgmsim.git
```

That's it. A folder called cgmsim has been created for you and all the needed files are in there.

If you'd like to run more simulators on the same machine, just run:

```
git clone https://github.com/lsandini/cgmsim.git cgmsim2
```
... and a separate folder called "cgmsim2" is created, identical to "cgmsim" 
 

## Installing dependencies 

Enter the installation directory of your choice with the **cd** command (cd = change directory): 

```
cd cgmsim
``` 
or 
```
cd cgmsim2
```
... or whatever your named your install folder.

In your linux terminal, type: 
```
sudo bash install_dependencies.sh
```

Your linux user password will be required. The script will once again launch the update of Ubuntu default packages, and install a fresh version of nodejs. The basic nodeJS version in Ubuntu Server 20.04, (updated on Oct. 15th 2021), is v10.19.0 on Raspberry Pi 3 or 4, and v12.21.0 on a DigitalOcean droplet.

You might see warnings during the installation and it might take a little while. Disregard the warnings and just wait for the process to complete.

Now we can move on to [executing the interactive setup script](setupscript.md), that will set the simulated T1D person's physical properties, then link this "virtual patient" to their own Nightscout website. 
