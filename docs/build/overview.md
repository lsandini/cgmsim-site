# Installation overview

You'll need 2 separate things in order to install and run your own instance of the simulator. [Nightscout](nightscout.md) is the user interface, and CGMSIM is the "virtual patient". There is no current plan to melt the 2 projects. 

## Nightscout

In order to use this simulator, you'll need an instance of Nightscout (NS). If you are not familiar with NS, go over to [Nightscout new users](https://nightscout.github.io/nightscout/new_user) and be sure to follow all the steps and perform this installation first. Make sure to write down the URL and the APISECRET (for example "MYAPISECRET1").

## The CGMSIM simulator itself
The simulator itself works in a Linux Ubuntu 20.04 LTS environment. You'll need a computer (or a virtual machine) running Ubuntu in order to complete the CGMSIM installation. If you don't have any experience, this will be a good opportunity to learn. Basic use is easier than you think. You can either rent a cloud-based Linux computer for a few euros/month, or rather [run Linux at home on a Raspberry Pi](linux.md).


The next steps are described separately and involve: 

1. downloading all the files from this Github repository
2. installing the dependencies necessary for running the simulator
3. setting up the environment variables
4. kickstarting the simulator
5. scheduling the repetitive tasks

## Using CGMSIM in a browser

Nightscout is broadly compatible with a wide range of browsers, both on desktop/laptop computers and handheld devices. The use of CGMSIM happens is a browser, and it doesn't require any app installation by its user. So you can be the administrator of 10 Nightscout websites, host 10 instances of CGM sim on a single Linux computer, and distribute 10 simulated patients to your team for example. 