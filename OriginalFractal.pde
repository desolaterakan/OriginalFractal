int e = 0;

public void setup() {
  size(500, 500);
}

public void draw() {
  frameRate(5);
  background(255);
  fractal(250, 250, 200);
}

public void fractal(int x, int y, int len) {
  noStroke();
  fill(e++, 0, 0);
  circle(x, y, len);
  if (len > 10) {
    fractal(x - len/2 - e/2, y + len/2 + e/2, len/2);
    fractal(x + len/2 + e/2, y - len/2 - e/2, len/2);
  }
  if (e > 255) {
    e = 0;
  }
}
