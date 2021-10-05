Modeling the absorption of Carbs from the gut
=============================================

There are many complicated and more or less precise published models of carb absorption, but for the purpose of this simulation, a simple bilinear model like the one found in the book [Think Like a Pancreas](https://www.amazon.com/Think-Like-Pancreas-Practical-Insulin-Completely/dp/0738215147) by Gary Scheiner, and used in [Perceptus' Glucodyn](https://github.com/Perceptus/GlucoDyn/blob/master/basic_math.pdf) simulator will do for now.  .



![Carb Absorption Rate](../img/CAR.jpg)

So if the absorption time (AT) were 4 hours, the absorption rate increases linearly until it reaches and peak, then decreases linearly to the end. The surface area of the triangle represents the Dose, or the amount of ingested carbs. The peak absorption rate is "h". It can be represented with the following equation:

$$
Dose = {AT \times h \over 2}
$$

Let's get rid of the "h" : 

In the **increasing** phase of absorption :
$$
CAR(t) = {2 \times h} \times {t \over AT} => {4 \times Dose \over AT^2} \times t
$$

And in the **decreasing** phase:

$$
CAR(t) = {2 \times h} \times {(1 - t) \over AT} => {4 \times Dose \over AT} \times {(1 - t) \over AT }
$$

<br>
To make the absorption of carbs from meals more realistic, I divided each meal in fast and slow absorbing parts. The ratio of fast absorbing carbs is randomly computed to be 10-40% of the whole meal. However, since todays June 10th 2021, the first 40 g of each meal will always be fast absorbing, so all small snacks will be fast carbs. 

In the current version of the algorithm, the fast carbs will be absorbed according to the bilinear model mentioned above, in a period of time of one hour. The remaining (slow) carbs are absorbed in a similar fashion, but over a period of 4 hours. 