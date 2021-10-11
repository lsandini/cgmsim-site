Modeling the Endogenous Glucose Production (EGP) by the liver
=============================================================

In an adult person with T1D, the EGP is about 100-120mg/kg/h, which means 8-10g/h for a 80kg person. Every day, the liver releases 200-240g of carbs into the bloodstream. 

The EGP is significantly affected by the insulin activity, since in the repleted and rested state, insulin decreases the liver glucose production more than it increases  peripheral glucose uptake. Moreover, other factors like the ingestion of alcohol, an adrenaline rush, prolonged fasting, will significantly increase or decrease the EGP.

The EGP is modeled here as a simple sinusoidal function. If the ISF is 2mmol/l/U and the CR is 10g/U, then the Carb Factor (CF) is 2mmol/l/10g. Since 10g are produced per hour (on average), the increase in BG due to the liver glucose production is 2mmol/l/h or 0.167 mmol/l/5min. 

Multiplying this by a sinusoidal value oscillating from 0.8 to 1.2 (± 20 %) will make the impact on BG vary from 0.13 to 0.20 mmol/l/5min. The sinus cycle starts at midnight, is maximal at 6 AM (mimicking a dawn effect or "liver dump"), back to baseline at 12 AM, minimal at 6 PM (mimicking the effect of light physical activity), and back to baseline at midnight.

In children, the cycle can be quite different, and the model proposed here apply to "most" adults.

![595142-20200914215212221-2008104967](https://user-images.githubusercontent.com/18611419/118400717-71af4580-b66b-11eb-9356-abb859db304f.jpg)