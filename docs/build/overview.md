Installation 
============

In order to use this simulator, you'll need an instance of Nightscout (NS). If you are not familiar with NS, go over to https://nightscout.github.io/nightscout/new_user/ and be sure to follow all the steps and perform this installation first. Make sure to write down the URL and the APISECRET (for example "MYAPISECRET1").

The simulator itself works in a Linux Ubuntu 20.04 LTS environment. You'll need a computer or a virtual machine running Ubuntu in order to complete the CGMSIM-2 installation. I do not recommend running the simulation as the __root__ user. Instead, create a regular user with sudo privileges, in my case "lorenzo". There are plenty of tutorials for that.

The next steps involve: 

- downloading all the files from this Github repository
- installating the dependencies necessary for running the simulator
- setting up the environment variables
- kickstarting the simulator
- scheduling the tasks