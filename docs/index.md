# Welcome to the CGMSIM documentation

For full documentation visit [Github CGMSIM repo](https://github.com/lsandini/cgmsim).

This application is simulating in real time and in an extremely basic way the effects food and various insulin analogs on continuous glucose monitor (CGM) curve in type 1 diabetes (T1D). It uses Nightscout (NS) as an input and visualization method.

Since even accurate physiological simulators can at best provide only an approximation of what happens in a biological organism, the goal is not even to try to match reality, but to provide a tool helping to visualize the fluctuations of glucose sensor values in response to various insulin analogs and food.

The simulation can be used as a learning and practicing tool, with a goal of keeping the CGM curve values as much of possible in certain range. The target range is 3.9 – 10 mmol/l or 70-180 mg/dl, and the target Time In Range (TIR) is 70%.

To understand the mechanics of such a simulation, just a few things must be considered.

a) The liver releases glucose into the bloodstream by either releasing its stores (glycogenolysis) or synthesizing new glucose from amino acids (gluconeogenesis). This is called the endogenous glucose production (EGP), and various biological states can affect it (not only alcohol!).

b) The ingestion of food and the digestion and absorption of carbohydrates will also increase the blood glucose. After a short delay, the CGM will reflect the increase of blood glucose.

c) This tool does not (yet) model the effect of exercise.

d) Mealtime insulins have a short duration of activity (DIA -around 3 hours), while basal insulins are meant to be injected once or twice a day, and hence have a much longer duration of activity. Both will lower blood glucose and thus sensor glucose values.

This is a warning box

!!! warning "Important"
    Please understand that this project:

    - Is highly experimental
    - Is not approved for therapy

    **You take full responsibility for building and running this system and do so at your own risk.**

This is a danger box

!!! danger "Danger"
    It's really easy to panic if CGMSIM fails to build or if you are having trouble using your app, but take the time to do a quick search in these docs and in your favorite social media group before posting a question.


This is an info box

!!! info "Take it one step at a time..."
    The info goes here...

And more text here.

```code something
```

## Commands

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs -h` - Print help message and exit.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.
