Random effects
==============

Since random number generators produce very jumpy values with various distributions between defined limits, I preferred trying a smoother, more "organic" noise function curve. Using a one-dimensional perlin-noise generator, an array of 17 * 17 = 289 values __*(perlin.json)*__ is produced each night at midnight by __*perlin.js*__. Each value gets a timestamp in 5 minute increments. [Read more about perlin noise here](https://github.com/andrewrk/node-perlin-noise#readme). 

![Perlin noise](https://necessarydisorder.files.wordpress.com/2017/11/tuto3.gif?w=300)

Every five minutes, as the next SGV value is computed, the latest perlin noise value in the last 5 minutes is taken into account. For now, the best settings are amplitude 0.3, octaves 1 and persistance 0.3. The values are multiplied by 10, and then again by 18 to get mg/dl, then added to the SGV jst before upload.

:smile:

<html>
<head>
    <meta charset="utf-8">
    <title>Map</title>
    <link rel="stylesheet" href="index.css">
    <script type="text/javascript" src="../javascripts/p5.js"></script>
    <script type="text/javascript" src="../javascripts/sketch.js"></script>
</head>
<body>
 BODY
    <canvas>sketch.js</canvas>
</body>
</html>