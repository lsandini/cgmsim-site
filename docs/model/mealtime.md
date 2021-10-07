# Modeling the activity of mealtime insulins

While simple "bilinear" models have been used in the past, precise modeling has been done for aspart and lispro. The biexponential model by Dragan Maksimovic described [here](https://github.com/LoopKit/Loop/issues/388#issuecomment-317938473) fits the published data from clamp studies. A very good explanation of this models in given in the [openAPS documentation](https://draft-openaps-reorg.readthedocs.io/en/latest/docs/How%20it%20works/understanding-insulin-on-board-calculations.html).

I use model to this compute the activity of each mealtime insulin dose. I selected a **time-to-peak of 60 minutes** and a **duration of insulin action (DIA) of 300 min** (5 hours!) as default. Mealtime insulins have a duration of activity closer to 180 min or 3 hours. For faster aspart (Fiasp®), you may want to choose an even shorter time-to-peak and DIA.

!!! info ""
    You will be able to set your own time-to-peak and DIA values during the interactive setup, along with other "patient-related" variables.

In simple terms, this means that the effect of insulin will increase from the moment of injection until it reaches a maximum "peak", and then decrease to 0 at the end of the DIA. 

Parameters: td = duration, Ia(td)=0, IOB(td)=0, tp = peak activity time, both expressed in minutes.

Time constant of exponential decay = $\tau$ .

$$
tp \times {(1-tp/td)}\over {(1-2 \times tp/td)}
$$

$$
dfag
$$


Rise time factor: a = 2*tau/td
Auxiliary scale factor: S = 1/(1-a+(1+a)*exp(-td/tau))
Insulin activity curve: Ia(t) = (S/tau^2)*t*(1-t/td)*exp(-t/tau)