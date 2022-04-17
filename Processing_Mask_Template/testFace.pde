/*
 * Course: ART 22  - Computer Programming for the Arts
 * Assignment: Week 3 Project MotionCollageAndImages
 *
 * by Yanwen Chen
 *
 * Initiated: 2022/04/15
 * Last updated: 2022/04/15
 *
 * CITATIONS: List all sources you used for this assignment.
 *
 * NOTE: This is where you write any notes you would like
 * to leave yourself or others using your code.
 *
 * */

boolean mic = true;

float easing = 1;      // The closer to 1 the less it eases. The closer to 0 the more it eases.
float volumeScalar = 50; // Use the UP and DOWN arrows to increase or decrease this while the
// program is running.

float reVolume;
float eaVolume;

void testFace()
{
  reVolume = map(v, 0, 1, 0, 5);   // map() remaps one number set to another. Our v variable
  // only goes from 0 to 1, but we can map it to any number.

  eaVolume += (reVolume - eaVolume) * easing;

  //ellipse(width/2, height/2, eaVolume, eaVolume);

  //gonna draw my face: a panda face!
  noStroke();

  fill(0);
  if (eaVolume>=3) {
    //left black ear
    circle(200, 250, 100);

    //right black ear
    circle(520, 250, 100);
  } else {
    //left black ear
    circle(200, 240, 100);

    //right black ear
    circle(520, 240, 100);
  }

  //white face
  fill(255);
  ellipse(360, 360, 380, 320);

  //left black eye
  fill(0);
  pushMatrix();
  translate(300, 330);
  rotate(-PI/3.0);
  ellipse(0, 0, 100, 70);
  popMatrix();

  //right black eye
  pushMatrix();
  translate(420, 330);
  rotate(PI/3.0);
  ellipse(0, 0, 100, 70);
  popMatrix();

  fill(255);
  if (eaVolume>=3) {
    //left eye details
    arc(310, 322, 18, 18, PI, 2*PI);

    //right eye details
    arc(410, 322, 18, 18, PI, 2*PI);
  } else {
    //left eye details
    circle(310, 322, 18);

    //right eye details
    circle(410, 322, 18);
  }

  //noise
  fill(0);
  circle(360, 380, 30);

  if (eaVolume>=3) {
    //mouth
    stroke(0);
    strokeWeight(16);
    line(338, 420, 382, 420);
    arc(360, 420, 45, 45, 0, PI);
  } else {
    //mouth
    stroke(0);
    strokeWeight(8);
    line(338, 420, 382, 420);
    noFill();
    arc(360, 420, 45, 45, 0, PI);
  }

  if (eaVolume>=3) {
    //left pinkish blush
    stroke(#ffc8d2);
    strokeWeight(16);
    line(220, 424, 226, 404);
    line(240, 424, 246, 404);
    line(260, 424, 266, 404);

    //right pinkish blush
    line(454, 406, 460, 424);
    line(474, 406, 480, 424);
    line(494, 406, 500, 424);
  }
}
