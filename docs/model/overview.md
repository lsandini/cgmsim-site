# Overview

Here you'll find details about the sequence of events happening in the simulation. When your simulation has been kickstarted, 3 sensor glucose values of 5 mmol/l or 90 md/dl (sgv) have been uploaded to your Nightscout (NS) website. 

The "inner clock" of the computer hosting the simulation will trigger the execution of various scripts at regular intervals. 

1. gather previous sensor glucose values 
2. gather previous "treatments" (food and/or insulin doses)
3. compute the endogenous glucose production (EGP)
4. compute a random variability factor (RND)
5. compute the global impact of treatments, EGP and RND on glucose values (delta)
6. compute the direction of arrows based on the previous deltas
7. upload a new sensor glucose value and arrow to NS every 5 minutes
8. repeat the cycle
