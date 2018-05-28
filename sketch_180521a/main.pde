Mover m = null;

void setup() {
  
  m = new Mover();
}

void draw() {
  background(255);
  m.update();
 m.display(); 
}
