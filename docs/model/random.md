Random effects
==============
<br>
## Perlin noise

Since random number generators produce very jumpy values with various distributions between defined limits, I preferred trying a smoother, more "organic" noise function curve. 

If you have never heard or Ken Perlin, he developed an algorithm generating natural looking textures for Disney's computer animated sci-fi movie [Tron](https://www.imdb.com/title/tt0084827) in 1982. It can be used to generated 1-, 2-, 3- or n-dimensional arrays of values, which is perfect for this simulation.  

Using a [one-dimensional perlin-noise generator](https://github.com/andrewrk/node-perlin-noise#readme), an array of 17 * 17 = 289 values is produced every 24 hours. A period of 24 hours counts 1440 minutes, or 288 intervals of 5 minutes. Each value gets a timestamp in 5 minute increments.

The mean variation is 0, which means that this background noise will cause temporary increases and decreases in BG, without major interference on the deflections caused by insulin, food or EGP.

<iframe style="width: 600px; height: 200px; overflow: hidden;"  scrolling="no" frameborder="0" src="https://preview.p5js.org/lsandini/embed/F1CtK8SNk"></iframe>
<br>

## Astronomy

Did I say something about the influence of the moon phase and planet alignment earlier? Well, this might very well be integrated here very soon.

:smile: