# Installation overview

## Nightscout

In order to use this simulator, you'll need an instance of Nightscout (NS). If you are not familiar with NS, go over to [Nightscout new users](https://nightscout.github.io/nightscout/new_user) and be sure to follow all the steps and perform this installation first. Make sure to write down the URL and the APISECRET (for example "MYAPISECRET1").

## The CGMSIM simulator itself
The simulator itself works in a Linux Ubuntu 20.04 LTS environment. You'll need a computer or a virtual machine running Ubuntu in order to complete the CGMSIM installation. 

I recommend using a Raspberry Pi (RPi) device, as it is the cheapest and most energy efficient solution. I currently host 10 simulated patients on a headless RPi3, without any monthly cost other than my broadband internet subscription. 

I do not recommend running the simulation as the __root__ user. Instead, create a regular user with sudo privileges, in my case "lorenzo". There are plenty of tutorials for that.

The next steps are descibed separately and they involve: 

1. downloading all the files from this Github repository
2. installating the dependencies necessary for running the simulator
3. setting up the environment variables
4. kickstarting the simulator
5. scheduling the tasks

## Using CGMSIM in a browser

Nightscout is broadly compatible with a wide range of browsers, both on desktop/laptop computers and handheld devices. The use of CGMSIM happens is a browser, and it doesn't require any app installation by its user.