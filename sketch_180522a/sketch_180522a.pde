Pendulum p;

void settings() {
  size(500, 500);  
}

void setup() {
}

void draw() {
  background(255);
  if(mousePressed) {
     p = new Pendulum(mouseX, mouseY);
  }
  if(p != null) {
    p.update();
    p.display();
  }
}
