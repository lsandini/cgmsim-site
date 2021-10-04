# Modeling the activity of mealtime insulins

While simple "bilinear" models have been used in the past, precise modeling has been done for aspart, lispro (and glulisine). The biexponential model by Dragan Maksimovic described [here](https://github.com/LoopKit/Loop/issues/388#issuecomment-317938473) fits the published data from clamp studies. A very good explanation of this models in given in the [openAPS documentation](https://draft-openaps-reorg.readthedocs.io/en/latest/docs/How%20it%20works/understanding-insulin-on-board-calculations.html).

I use model to this compute the activity of each mealtime insulin dose. I selected a peak time of 60 minutes and a DIA of 300 min (5 hours!) as default, but mealtime insulins have a duration of activity closer to 180 min or 3 hours. For faster aspart ir Fiasp®, you may want to choose an even shorter time-to-peak and DIA.

!!! info "Not all patients are equal..."
    You will be able to set your own time-to-peak and DIA values during the interactive setup, along with other "patient-related" variables.