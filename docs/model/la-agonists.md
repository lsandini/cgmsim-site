# Modeling the activities of the long-acting agonists

For detemir and glargine instead, mathematical models are missing. Based on clamp studies in T1D, the intra-individual day-to-day variation is an important factor affecting the predictability of a single repeated dose. Moreover, the inter-individual variability makes modeling even more a challenge. Even with the best curve-fitting tools, no “global model” was achieved.

Since the goal is not to make a perfect model, I first decided to use a sinusoidal curve to model detemir, and a half-ellipse for glargine. The obvious reasons are that the mathematics are simple 😬


## Switching to biexponential models 

While the very basic mathematical models of long acting insulin analogs are good enough for training (see blow), getting closer to published "curves" and physiological activity is necessary. I decided to adopt the biexponential [model used for mealtime insulins](mealtime.md) to long-acting insulin agonists.

The activity of detemir and glargine-U100 depend on the absolute amount (units), but also on the dose in relation to the patient's weight (U/kg). Also, the peak of action is achieved at different timepoints. The DIA of detemir is more variable and dose dependent than that of glargine.

!!! danger "Bi-exponential models"
    For detemir, the duration of action is 14h + (24* dose/weight), and the peak is at duration/3.

    For glargine U100, the duration of action is 22h + (12* dose/weight), and the peak is at duration/2.5.

![models 3](https://user-images.githubusercontent.com/18611419/135437260-89bf584b-e412-41d9-bcba-026e6b27d3cc.jpg)

![nature](https://user-images.githubusercontent.com/18611419/135437277-8fe8c4d8-9bea-4466-8820-1240de922e2c.jpg)

Notice that the curve colours are different, and some of the activity curves seem to derived from steady-state euglycemic clamps.


## Modeling Levemir (Levemir®)

The clamp studies show that the dose-response curve is linear. With increasing doses from 0.1U/kg to 1.6U/kg, the total activity, or area under the curve (AUC) of the glucose infusion rate (GIR) needed to maintain normal blood glucose follows a straight line.
 
![image](https://user-images.githubusercontent.com/18611419/109794079-26fe5f80-7c1e-11eb-916c-3944d259f2a3.png)
 
However, the DIA seems related to the dose/kg, so that had to be considered in the model. The AUC precisely reflects the injected number of units and is identical for 12U @0.1U/kg and 12U @0.4U/kg.
However, when increasing the do dose from 12U @0.4U/kg to 24U @0.4U/kg, you can see that the DIA increases:

![image](https://user-images.githubusercontent.com/18611419/109794111-3382b800-7c1e-11eb-92b6-b04351691c5f.png)


Duration of Levemir action = 16 + (20 * U/weight)
So for 0.1 U/kg, the duration of action is 16+(20 * 0.1) = 18 hours, and for 0.4U/kg, the DIA is 16+(20 * 0.4) = 24 hours.

And the model itself is:
y= units * (Math.PI/(duration * 2)) * (Math.sin(time * Math.PI/duration));

(for the biexponential model in detemir2.js, the duration of activity = (14 + (24 * dose/weight)), and the peak is duration/3.

Modeling Glargine (Lantus®, Abasaglar®, Toujeo®)
================================================
For the time being, only glargine U100 is basically modeled here, with a DIA of 27 hours. Again, the AUC reflects the injected dose.

![image](https://user-images.githubusercontent.com/18611419/109794202-4c8b6900-7c1e-11eb-9c47-69054578e68f.png)

I “chopped” the equation in little bits fo clarity :

b = (2 * basalDose)/(Math.PI * duration);  // duration is 27 hours

x = (Date.now() - time0)/(60 * 60 * 1000); //time0 is the time of injection

g = x-(duration / 2);

gg = Math.pow(g,2);

h = duration / 2;

hh= Math.pow(h,2);

z = (x-gg) / hh;

bb = Math.pow(b,2);

y = 2 * Math.sqrt(bb * (1+z)); // where y is the activity of glargine over time

(for the biexponential model in glargine2.js, the duration of activity = (22 + (12 * dose/weight)), and the peak is duration/2.5 .

Here is a visual aid illustrating the differences between the activity curves of detemir and glargine at different doses:
 
![image](https://user-images.githubusercontent.com/18611419/109794249-5745fe00-7c1e-11eb-9d94-839c4a34d706.png)

