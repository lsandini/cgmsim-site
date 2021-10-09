# Installing Linux Ubuntu

Two major options are available. 

1. A cloud-based solution like [Digital Ocean](https://www.digitalocean.com/products/linux-distribution/ubuntu/) or [MVPS](https://www.mvps.net/configure). They provide a virtual machines that you can create in seconds with just a few clicks, for a few euros/month.
   
2. A computer running Linux at home.
<br>

## Raspberry Pi

I recommend using a [Raspberry Pi (RPi)](https://www.raspberrypi.com/products/) device, as it is the cheapest and most energy efficient solution. I currently host 10 simulated patients on a headless RPi3, without any monthly cost other than my broadband internet subscription. The price of a Raspberry Pi Zero is less than 10 EUR, and if you prefer a more robust solution a Raspberry Pi 4 starter kit including a charger, a preloaded SD card costs less than 100 EUR).

Linux Ubuntu is completely free and comes with all the software you need. Here are the [instructions for installing Ubuntu Server on a Raspberry 2, 3 or 4](https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#1-overview). You don't need to connect your RPi to a monitor, a keyboard or a mouse. Your installation won't even have a desktop interface. As soon as your linux computer is connected to your home network with LAN or WLAN, you will need a separate computer in order to login into your Linux computer remotely through the network.

I do not recommend running the simulation as the __root__ user. [Instead, create a regular user with sudo privileges.](https://www.digitalocean.com/community/tutorials/how-to-create-a-new-sudo-enabled-user-on-ubuntu-20-04-quickstart)