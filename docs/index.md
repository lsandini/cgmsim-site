# Welcome to the CGMSIM documentation

##Introduction

This application is an **interactive real time simulation** of the effects of food and insulin analogs on the blood glucose of a patient with type 1 diabetes (T1D). Rather than blood glucose (BG) values, it displays a continuous glucose sensor (CGM) trace using <a href="https://nightscout.github.io/" target="_blank">Nightscout</a> as visualization tool. 

This is what it looks like, in an accelerated view :
![Animation2](img/CGMSIM.gif)

<br>
Since even the most accurate physiological simulators can at best provide only an approximation of what happens in a living organism, the goal of this simulation is not even to try to match reality, but to provide a framework for practising, learning and/or teaching.

The treatment goal in type 1 diabetes is to keep the BG or CGM curve values as close as possible to that of a healthy person. In realistic terms, it means 3.9 – 10 mmol/l or 70-180 mg/dl for CGM curves. The Time In Range (TIR) should be at least 70%.

!!! warning "Important"
    Please understand that this simulation:

    - cannot predict individual response to treatment
    - cannot replace traditional patient/caregiver education
    - does not depict 100% realistically human physiology

    **This is work in progress, and all feedback is welcome !**


## Human physiology

To understand the mechanics of the simulation, a few things must be considered.

1. After a meal, the **absorption of carbohydrates** from the gut will also increase the blood glucose. Since insulin replacement is administered subcutaneously and not directly into the hepatic portal vein, some of the ingested food will be absorbed into the main bloodstream directly, bypassing the liver. After a short delay, the CGM will reflect the increase of blood glucose.

2. The **endogenous glucose production** (EGP) is mainly du to the liver release of glucose into the bloodstream. Either by releasing stores (glycogenolysis) or by synthesizing new glucose (neoglucogenesis). Various biological states, alcohol and hormones can affect EGP. As glucose is released into the blood stream, the blood glucose concentration increases.

3. **Physical exercise** affects blood glucose in many ways. Short bouts of intense physical activity will trigger the release of adrenaline, which increases the EGP. In turn, the increased peripheral uptake of glucose in the muscle tissue will lower the blood glucose as physical activity continues. The same continues also during the post exercise phase, until the muscle glycogen stores are repleted.

4. **Mealtime insulins** have a short duration of activity (DIA, ~3 hours), while **long-acting insulin analogs** are meant to be injected once or twice a day. Both will lower blood glucose and thus sensor glucose values.

5. The intricate biological pathways affecting the blood glucose variations are difficult to replicate mathematically. The absorption of ingested food from the gut, the absorption of insulin from the subcutaneous tissue, the timing of exercise, the circadian rhythm, menstrual cycle, the moon phase and the alignment of planets :wink: all seem to play a role. Adding a touch of **random variation** (or chaos) brings some realism in the simulation.  


## Why use a simulator ?

Many scenario-based simulators have been written in the past, like [AIDA](http://www.2aida.org/) or the [UVA/Padova T1DMS](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4454102/). In contrast, CGMSIM runs in **real time** like a "serious game". It requires time and dedication to reach its goal. It is not a matter of hours or days, but rather weeks or months. Many instances of the simulator can run on one computer, serving many users at a time, making team training possible.

!!! danger "Healthcare Professionals - HCPs"
    Unless you or your family member has T1D, it is hard to figure how treatment can be time-consuming, technically difficult or frustrating. Even without having to worry about the risk of long-term vascular complications or acute life-threatening hypoglycemia, early adopters of this simulator showed signs of treatment fatigue after a few weeks already.

    Living with incertainty 24/7, and facing reports of treatment "success" will teach some humility and empathy.


!!! info "Not all patients are equal..."
    Every simulated patient can be defined in terms of weight, insulin sensitivity, amplitude of EGP variability.

This website will describe step by step how to install and kickstart the simulation as an administrator, and how to use it as an end-user.

## Where is the source code ?

**The source code and more technical details on how various scripts are excecuted and interact with each other can be found in the [CGMSIM projet's repository](https://github.com/lsandini/cgmsim)**