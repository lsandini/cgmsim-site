Modeling exercise
=================
__04.08.2021__ I just found a way to import Apple Healthkit data from my iPhone my simulator in JSON form. Exercise modeling is not part of the project (yet), but I might use heart rate or cumulative step data when computing CGM values in the future. Something similar from Android wearables or Fitbit wristbands would be cool too.

__12.09.2012__ Now the files __*server.js*__ and __*steps.js*__ have been added. I am using an app called "Health Auto Export" that pack selected Health data from the Apple Health App and uploads it in JSON format. I wrote a little API in Node/Express accepting the uploads, and sending the heart rate data as "BG" values for display. Dispplay is of course optional, but the heart rate data and the cumulative steps count will be used in the next version ove the simulator to influence the behavious of the CGM curve. Thanks to Lybron Sobers for the export app ! https://github.com/Lybron/health-auto-export