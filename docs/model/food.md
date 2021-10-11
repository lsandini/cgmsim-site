Modeling the absorption of Carbs from the gut
=============================================

There are many complicated and more or less precise published models of carb absorption, but for the purpose of this simulation, a simple bilinear model like the one found in the book [Think Like a Pancreas](https://www.amazon.com/Think-Like-Pancreas-Practical-Insulin-Completely/dp/0738215147) by Gary Scheiner, and used in [Perceptus' Glucodyn](https://github.com/Perceptus/GlucoDyn/blob/master/basic_math.pdf) simulator will do for now.


![Carb Absorption Rate](../img/CAR.jpg)


So if the total absorption time (AT) is 4 hours, the absorption rate increases linearly until it reaches its peak, then decreases linearly to the end. The surface area of the triangle represents the amount of ingested carbs (the "Dose"). The peak absorption rate is "h". This can be represented with the equivalent following equations:

$$
Dose = {AT \times h \over 2}
$$

<br>

$$
h = {{2 \times Dose } \over AT}
$$

<br>

Let's get rid of the "h", and describe the Carbs Absorption Rate (CAR) as a function of time : 
<br>

- In the **increasing** phase of absorption :

$$
CAR(t) = {2 \times h} \times {t \over AT }\text{  } => \text{  } { 4 \times Dose \over AT^2} \times t
$$

<br>
- And in the **decreasing** phase:

$$
CAR(t) = {2 \times h} \times {(1 - t) \over AT } \text{  } => \text{  } { 4 \times Dose \over AT} \times {(1 - {t \over AT})}
$$

<br>
!!! Danger "Mixed meals and Snacks"
    To make the absorption of carbs more realistic, the first 40 g of each meal will always be **fast absorbing**.
    
    For bigger meals, the excess carbs over 40g are divided in fast and slow absorbing parts. The ratio of fast absorbing carbs is **randomly computed to be 10-40 % of the carb excess**. So for a meal declared as 100g, the first 40 are fast carbs. The remaining 60g will be divided randomly in slow and fast parts. You'll find out sooner or later.

In the current version of the simulator, fast carbs will be absorbed according to the bilinear model mentioned above, **over a period of time of one hour**. The remaining (slow) carbs are absorbed in a similar bilinear fashion, but over a period of 4 hours. This can be set in the interactive setup script during installation.

