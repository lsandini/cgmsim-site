Modeling the Endogenous Glucose Production (EGP) by the liver
=============================================================

While this is absolutely neither true nor realistic, for the time being the EGP is modeled as a linear function of time. It equivalents to 10g of absorbed carbs/hour, so depending on the user's insulin sensitivity factor (ISF, mmol/l/U) and carb ratio (CR, g/U), an the EGP effect is EGP * ISF * CR expressed in mmol/l/g. 

The EGP is significantly affected but the insulin activity, since in the repleted rested state, insulin decreases the liver glucose production more than it increases the peripheral glucose uptake. Moreover other factor like the ingestion of alcohol will significantly decrease the EGP, which could be simple modeled in the future.

__16.05.2021__ This feature is not yet in use, but a sinusoidal function is added, with which the liver blood glucose impact can be set to vary in a sinusoidal or cosinusoidal manner. The file __*sinus.js*__ creates the waveforms, and __*liver.js*__ computes and writes __*latest_liver.json*__, not in use yet. This can be added to __*sgv_start.js*__ later.

__17.05.2021__ Now sinusoidal variation of liver glucose production is in testing phase. If the ISF is 2mmol/l/U and the CR is 10g/U, then the Carb Factor (CF) is 2mmol/l/10g. Since 10g are produced per hour, the increase in BG due to the liver glucose production is 2mmol/l/h or 0.1666 mmol/l/5min. Multiplying this by a sinusoidal value oscillating from 0.8 to 1.2 will make this impact on BG vary from 0.1333 to 0.2000 mmol/l/5min. the sinus cycle starts at midnight, is maximal at 6 AM (mimicking a dawn effect), back to baseline at 12 AM, minimal at 6 PM (mimicking the effect of light physical activity), and back to baseline at midnight.

![595142-20200914215212221-2008104967](https://user-images.githubusercontent.com/18611419/118400717-71af4580-b66b-11eb-9356-abb859db304f.jpg)