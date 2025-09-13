void setup() {
  size(1400, 800);
}

void draw() {
  background(#4CA74D);
  for(int y = 50; y <=650; y+=200){
  for(int x = 50; x<=1250; x+=200){
    scale(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)), x, y);
  }
}
}
//((int)(Math.random()*255))
void scale(int randomColor1, int randomColor2, int randomColor3, int x, int y) {
  int diam = 0;
  float r = 244;
  float g = 247;
  float b = 147;

  noStroke();
  fill(randomColor1, randomColor2, randomColor3);
  rect(x, y, 100, 100);
  arc(x+50, y+100, 100, 100, radians(0), radians(180)); //bottom
  arc(x, y+50, 100, 100, radians(90), radians(270)); //left
  arc(x+100, y+50, 100, 100, radians(270), radians(450)); //left
  arc(x+50, y, 100, 100, radians(180), radians(360)); //top
  noFill();
  while (diam < 70) {
    stroke(r, g, b);
    ellipse(x+50, y+50, diam, diam);
    diam++;
    r-=244/70.0;
    g-=247/70.0;
    b-=147/70.0;
  }
}

