# Random effects

## Perlin noise

Since random number generators produce very "jumpy" values with various distributions between defined limits, I preferred trying a smoother, more "organic" noise function curve. 

If you have never heard or Ken Perlin, he developed an algorithm generating natural looking textures, used for example in Disney's computer animated sci-fi movie [Tron](https://www.imdb.com/title/tt0084827) in 1982. It can be used to generate 1-, 2-, 3- or n-dimensional arrays of values, which is perfect for this simulation.  

Using a [one-dimensional perlin-noise generator](https://github.com/andrewrk/node-perlin-noise#readme), an array of 17 * 17 = 289 values is produced at regular intervals. A period of 24 hours has 1440 minutes, or 288 intervals of 5 minutes. Each value is attributed a timestamp in 5 minute increments. 

The mean variation is 0, which means that this background noise will cause temporary increases and decreases in BG, without major interference on the deflections caused by insulin, food or EGP.

This animation rendered in [p5.js](https://p5js.org/) illustrates a continuously oscillating perlin noise curve:

<iframe style="width: 400px; height: 250px; overflow: hidden;"  scrolling="no" frameborder="0" src="https://editor.p5js.org/lsandini/full/F1CtK8SNk"></iframe>
<br>

## Astronomy

Did I say something about the influence of the moon phase and planet alignment earlier? Well, this might very well be integrated here very soon... :smile:

<img src="https://user-images.githubusercontent.com/24463821/90344480-44543f00-dfe8-11ea-9b99-a640c0f26136.gif" alt="Solar system" width="200"/>
