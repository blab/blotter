var sphere_size = 150;
var point_size = 5;
var num_points = 1;
var noise_amp = 0;

var xs = new Array(num_points);
var ys = new Array(num_points);
var zs = new Array(num_points);

var angleXs = new Array(num_points);
var angleYs = new Array(num_points);
var angleZs = new Array(num_points);

var omegas = new Array(num_points);



function setup(){
  createCanvas(710, 400, WEBGL).parent('noisy spin demo');
  //myCanvas.parent('noisy spin demo');

  var locY = (mouseY / height - 0.5) * (-2);
  var locX = (mouseX / width - 0.5) * 2;

  ambientLight(100, 80, 80);
  pointLight(200, 200, 200, locX, locY, 0);

  for (var a = 0; a < num_points; a++) {

    var x = 0.5;
    var y = -0.5;
    var z = 0.5;

    var length = sqrt(x*x + y*y + z*z);

    xs[a] = sphere_size * x / length;
    ys[a] = sphere_size * y / length;
    zs[a] = sphere_size * z / length;

    omegas[a] = 0.02;

    angleXs[a] = 0;
    angleYs[a] = 0;
    angleZs[a] = 0;

  }

}

function draw(){

  background(34,34,34);
  ambientMaterial(250);
  // fill(100,100,100, 100)
  sphere(sphere_size, 100, 100);

  //rotateX(pRotationX + randomGaussian() * 0.01);
  //rotateY(pRotationY + randomGaussian() * 0.01);
  //rotateZ(pRotationZ + randomGaussian() * 0.01);

  var angleX = noise_amp * randomGaussian();
  var angleY = noise_amp * randomGaussian();
  var angleZ = noise_amp * randomGaussian();

  for (var a = 0; a < num_points; a++) {

    xs[a] += (angleY + omegas[a]) * zs[a] - angleZ * ys[a]
    ys[a] += angleZ * xs[a] - angleX * zs[a]
    zs[a] += angleX * ys[a] - (angleY + omegas[a]) * xs[a]

    var d = sqrt(xs[a]*xs[a] + ys[a]*ys[a] + zs[a]*zs[a])

    xs[a] = sphere_size * xs[a] / d
    ys[a] = sphere_size * ys[a] / d
    zs[a] = sphere_size * zs[a] / d

    push();
    translate(xs[a],ys[a],zs[a]);
    fill(244,0,244)
    sphere(point_size, 5, 5);
    pop();

	}

}

function mouseDragged(){

noise_amp = 0.01

}

function mouseClicked() {

  var x = randomGaussian();
  var y = randomGaussian();
  var z = randomGaussian();

  var length = sqrt(x*x + y*y + z*z);

  xs[num_points] = sphere_size * x / length;
  ys[num_points] = sphere_size * y / length;
  zs[num_points] = sphere_size * z / length;

  omegas[num_points] = 0.001 * randomGaussian();

  num_points += 1;
}
