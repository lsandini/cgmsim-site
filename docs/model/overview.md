# Overview

Here you'll find details about the sequence of events happening in the simulation. When your simulation has been [kickstarted](../build/kickstart.md), 3 sensor glucose values of 5 mmol/l or 90 md/dl (sgv) have been uploaded to your Nightscout (NS) website. 

The "inner clock" of the computer hosting the simulation will trigger the execution of various scripts at regular intervals. 

!!! info "Sequence of events"

    1. gather previous sensor glucose values 
    2. gather previous "treatments" (food and/or insulin doses)
    3. compute the endogenous glucose production (EGP)
    4. compute a random variability factor (RND)
    5. compute the global impact of treatments, EGP and RND on glucose values (delta)
    6. compute the direction of arrows based on the previous deltas
    7. upload a new sensor glucose value and arrow to NS every 5 minutes
    8. repeat the cycle indefinitely
<br>

## ISF, CR, CF, BGI

The **Insulin Sensitivity Factor** (ISF) represents the impact on BG attributable to the effect of 1 unit of insulin. Its measurement unit is mmol/l/U or mg/dl/U. So an ISF of 2 means that the blood sugar concentration decreases 2 mmol/l for each given insulin unit.

The **Carb Ratio** (CR) represents the amount of insulin needed to counteract a defined amount of carbs. It is expressed as g/U. For example if 10g of carbs are counteracted by 1 unit of mealtime insulin, the CR is 10 g/U.

The **Carb (sensitivity) Factor** (CF) represents the impact of a defined amount of absorbed carbs on the blood glucose concentration. It can be expressed on mmol/l/g. A simple way to compute is the following: if 1 unit of insulin is needed to decrease BG by 2 mmol/l, and the same 1 U of insulin is needed to counteract 20g or carbs, then the CF is 2 mmol/l / 20g or 1 mmol/l/10g.  (CF = CR/ISF)

The BGI or **Blood Glucose Impact** is the absolute change in BG concentration due an amount of insulin or carbs. Examples :

    With an ISF of 2.5, the BGI of 4 units of insulin is 4U * 2.5mmol/l/U = 10 mmol/l (decrease in BG)
    With a CF of 1.8, the BGI of 50 grams of carbs is 50g * 1.8 mmol/l/g = 9 mmol/l (increase in BG)
<br>

## Linear, polynomial, exponential models

The cumulative BGI of all these factors combined is called the "delta", or change from the previous BG value. Is is calculated for 5 minute intervals, then added (or substracted) from the previous sensor glucose value. **It does not describe how fast the change is happening**. 

The Blood Glucose Impact of 1 unit of mealtime insulin is achieved at the end of the duration os action of insulin (DIA), and the BGI of 50g of carbs is achieved as the whole meal is absorbed, sometimes only 6 hours after the meal is consumed. 

Describing mathematically the intensity of the effect of insulin or carbs at any instant in time is called "modeling".

!!! danger "Models in detail"
    Next we'll see in detail how various insulins, food, endogenous glucose production and random effect can be modeled mathematically.