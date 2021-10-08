# Modeling the activity of mealtime insulins

While simple "bilinear" models have been used in the past, precise modeling has been done for aspart and lispro. The biexponential model by Dragan Maksimovic described [here](https://github.com/LoopKit/Loop/issues/388#issuecomment-317938473) fits the published data from clamp studies. Dragan has made a tremendous work with this model, adopted now by all DIY artificial pancreas algorithms.

A very good explanation of this various models in given in the [openAPS documentation](https://draft-openaps-reorg.readthedocs.io/en/latest/docs/How%20it%20works/understanding-insulin-on-board-calculations.html).

I use model to this compute the activity of each mealtime insulin dose. I selected a **time-to-peak of 60 minutes** and a **duration of insulin action (DIA) of 300 min** (5 hours!) as default. Mealtime insulins have a duration of activity closer to 180 min or 3 hours. For faster insulin aspart (Fiasp®), you may want to choose an even shorter time-to-peak and DIA.

!!! info ""
    You will be able to set your own time-to-peak and DIA values during the interactive setup, along with other "patient-related" variables.

In simple terms, this means that the effect of insulin will increase from the moment of injection until it reaches a maximum "peak", and then decrease to 0 at the end of the DIA. 


### Parameters  
----------
**td** = duration duration of insulin activity (DIA)  
**tp** = peak activity time


$$
\text{Time constant of exponential decay = } \tau = { tp \times {{(1-tp/td)}\over {(1-2 \times tp/td)} } }
$$

<br>

$$
\text{Rise time factor = } a = { 2 \times {\tau \over td}}
$$

<br>

$$
\text{Auxiliary scale factor = } S = {1 \over {(1 -a) + (1 + a)\times {\exp({-t\over \tau})}}}
$$

<br>

$$
\text{Insulin activity curve = } Ia(t) = {S \over \tau^2} \times t \times {(1 - {t \over td})} \times \exp({-t \over \tau})
$$

<br>
<br>
----  

As can be seen on the picture below, with a DIA of 300 min and tp = 55 min (dark orange curves), 80\% of the insulin has been absorbed and its activity has declined to 10\% of its peak value after 180 min:  
<br>

![ImageDM](https://user-images.githubusercontent.com/12002177/28603367-d54aed1c-7180-11e7-800e-f43c0ca17042.jpg)
