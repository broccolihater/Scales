void setup() {
  size(725, 725);
  frameRate(1);
}

void draw() {
  background(255, 255, 0);
  boolean shift = true;
  for (int y = 0; y < 1500; y = y + 125) {
    for (int x = 0; x < 1500; x = x + 300) {
      if (shift == true) {
        rage(x+75, y);
      } else {
        rage(x, y);
      }
    }
    if (shift == true) {
      shift = false;
    } else {
      shift = true;
    }
  }
  for (int u = 0; u < 1500; u = u + 125) {
    for (int c = 150; c < 1500; c = c + 300) {
      if (shift == true) {
        curse(c+75, u);
      } else {
        curse(c, u);
      }
    }
    if (shift == true) {
      shift = false;
    } else {
      shift = true;
    }
  }
}

void rage(int x, int y) {
  int rColor = (int)(Math.random()*255);
  int gColor = (int)(Math.random()*255);
  int bColor = (int)(Math.random()*255);
  if (Math.random()<0.25) {
    fill(255, 0, 0);
  } else {
    fill(rColor, gColor, bColor);
  }
  ellipse(x, y, 150, 150);
  stroke(5);
  strokeWeight(5);
  bezier(x-15, y-20, x-32.5, y-32.5, x-42.5, y-30, x-55, y-30);
  bezier(x+15, y-20, x+32.5, y-32.5, x+42.5, y-30, x+55, y-30);
  strokeWeight(10);
  bezier(x-32.5, y+50, x-12.5, y+35, x+12.5, y+35, x+32.5, y+50);
  strokeWeight(2.5);
  fill(0, 0, 0);
  ellipse(x-20, y-5, 15, 30);
  ellipse(x+20, y-5, 15, 30);
}

void curse(int c, int u) {
  int rColor = (int)(Math.random()*255);
  int gColor = (int)(Math.random()*255);
  int bColor = (int)(Math.random()*255);
  if (Math.random()<0.25) {
    fill(255, 0, 0);
  } else {
    fill(rColor, gColor, bColor);
  }
  ellipse(c, u, 150, 150);
  stroke(5);
  strokeWeight(5);
  bezier(c-15, u-20, c-32.5, u-32.5, c-42.5, u-30, c-55, u-30);
  bezier(c+15, u-20, c+32.5, u-32.5, c+42.5, u-30, c+55, u-30);
  strokeWeight(2.5);
  fill(0, 0, 0);
  rect(c-60, u+20, 120, 35);
  fill(255, 255, 255);
  textSize(32);
  text("&$!#%", c-50, u+50);
  fill(0, 0, 0);
  ellipse(c-20, u-5, 15, 30);
  ellipse(c+20, u-5, 15, 30);
}
