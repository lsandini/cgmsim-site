
var inc = 0.01;
var start = 0;

function setup() {
  createCanvas(300, 300);
  canvas.parent('sketch-holder')
}

function draw() {
  background(0);
  stroke(255);
  noFill();

  beginShape();
  var xoff = start;
  stroke(255);
  for (var x = 0; x < width; x++) {
    stroke(0,255,0);
    //var y = random(height);
    var y = noise(xoff) * height;
    vertex(x, y);
    xoff += inc;
}
endShape();

start += inc; 

}