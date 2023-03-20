# Modeling the activity of the long-acting agonists

While the activity of mealtime insulins has been well studied and modeled, mathematical models are missing for long-acting insulin agonists. Based on clamp studies in T1D, the intra-individual day-to-day variation is an important factor affecting the predictability of a single repeated dose. Moreover, the inter-individual variability makes modeling even more a challenge. Even with the best curve-fitting tools, no “global model” was achieved.

In addition to **detemir (Levemir®)** and **glargine U100 (Lantus®, Abasaglar®)**, new long-acting insulin agonists **degludec (Tresiba®)** and **glargine U300 (Toujeo®)** have been added.

<br>
## Using bi-exponential models 

The activity of detemir and glargine U100 depend on the absolute amount (units), but also on the dose in relation to the patient's weight (U/kg). Also, the peak of action is achieved at different timepoints. The DIA of detemir is more variable and dose-dependent than that of glargine.

!!! danger "Bi-exponential models"
    For detemir, the duration of action is 14h + (24* dose/weight), and the peak is at duration/3.

    For glargine U100, the duration of action is 22h + (12* dose/weight), and the peak is at duration/2.5.

    For glargine U300, the duration of action is 24 +  (14* dose/weight), and the peak is at duration/2.5.

    For degludec, the duration is 42, with a peak at 14h after injection.



![models 3](https://user-images.githubusercontent.com/18611419/135437260-89bf584b-e412-41d9-bcba-026e6b27d3cc.jpg)

Here are some activity curves as depicted in many publications. Notice that the curve colours are different, and some of the activity curves seem to derived from steady-state euglycemic clamps, not from single injection clamps :

![nature](https://user-images.githubusercontent.com/18611419/135437277-8fe8c4d8-9bea-4466-8820-1240de922e2c.jpg)
