## Nightscout

In order to use this simulator, you'll need an instance of Nightscout (NS). Nightscout is hosted on Heroku, a cloud-based platform. You don't have to worry about running your own server, registering domains, making backups, losing internet connections, etc...

Nightscout requires a database to run, where all the food and insulin "treatments" are stored, along with the sensor glucose values. This "Mongo" database must be created and linked to your Nightscout website.

Please go over to [Nightscout's installation guide for new users](https://nightscout.github.io/nightscout/new_user). The whole installation is well explained, step by step.

Make sure to follow all the steps and perform this installation first. It will take you some time, probably about 60 minutes. Write down the URL of your Nightscout website and the password or API secret (or password, for example "MYAPISECRET1" as in the following example).

Running Nightscout on Heroku on "free dynos" is free of charge. However, if the amount of work done on the server exceeds a certain limit, your "free dynos" will be exhausted and your site will stop working until the following month. Upgrading your account to "hobby dynos" (7 USD or 6 EUR / month) means your site will run without interruptions.

<img src="https://nightscout.github.io/img/cropped-Header3.png" alt="Nightscout" width="400"/>