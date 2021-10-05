Modeling the absorption of Carbs from the gut
=============================================

There are many complicated and more or less precise published models of carb absorption, but for the purpose of this simulation, a simple bilinear model like the one found in the book [Think Like a Pancreas](https://www.amazon.com/Think-Like-Pancreas-Practical-Insulin-Completely/dp/0738215147) by Gary Scheiner, and used in [Perceptus' Glucodyn](https://github.com/Perceptus/GlucoDyn/blob/master/basic_math.pdf) simulator will do for now.  .

To make the absorption of carbs from meals more realistic, I divided each meal in fast and slow absorbing parts. The ratio of fast absorbing carbs is randomly computed to be 10-40 % of the whole meal. __However, since todays June 10th 2021, the first 40 g of each meal will always be fast absorbing, so all small snacks will be fast carbs !!!__. In the current version of the algorithm, the fast carbs will be abosrbed according to the bilinear model mentioned above, in a period of time of one hour. The remaining (slow) carbs are absorbed in a similar fashion, but over a period of 4 hours. 

$$
\operatorname{ker} f=\{g\in G:f(g)=e_{H}\}{\mbox{.}}
$$