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

As many T1D patients say as a joke from time to time, their blood sugar variations seem to be "influnced by the stars, the planets and the Moon...". Jokes apart, CGMSIM v2.0 lacked this kind of variability over time, and was felt as "too static" by some users, despite the perlin variation described above. 

Adding cyclic monthly fluctuations (according to the Moon cycle), and some other slower varying fluctuation (based on the Planets' position in the Solar System), sounded like a fun coding challenge.

!!! warning "Disclaimer"
    - There is no scientific indication that the movements of the Stars or Planets above, or the phase of the Moon have any direct impact on a living person's blood sugar variation. 
  
    - Including these variables in the model only adds a **tiny variation over time**, and some difficulty for the simulator user.

    ** This astronomical influence model could be replaced by any other calculation, and is mainly here as a fun factor!**  

The coordinates of the Planets of the Solar System can be computed in various reference systems. Heliocentric (Sun-centered), or Geocentric (Earth-centered) for example. I decided to centralize these computations in a separate application, running in the cloud here: [Astronomical Computations](https://astro6.herokuapp.com). This application uses precise formulas based on Jean Meeus 'Astronomical Algorithms' book and the VSOP87 theory. They are gathered in an [open-source bundle](https://github.com/andrmoel/astronomy-bundle-js).

CGMSIM will automatically retrieve the geocentrical longitudes of Mercury, Venus, Mars, Jupiter, Saturn and Neptune and their distances, as seen from Earth. The phase of the Moon is also retrieved.

Using Newton's Law of Universal Gravitation, and using the mass and distance data, each planet's individual gravitational attraction force (or "pull") applied to the simulated subject is computed. Since every planet is pulling the subject in a different direction, a global pull vector is computed.

If all planets were "aligned", they all would be pulling in the same direction. This happens once in a gazillion years, and not in the near future... So I computed a "conjunction factor", describing how the planets are dispersed around us. A low dispersion (or high conjuction) will further amplify the apparent gravitational force. 

Finally, the phase of the Moon will influence the CGM curve. The Moon's illumination factor is 100% at the Full Moon, and 0% at the New Moon. The Moon cycle is 29.53 days...

<img src="https://user-images.githubusercontent.com/24463821/90344480-44543f00-dfe8-11ea-9b99-a640c0f26136.gif" alt="Solar system" width="200"/>
