Mover m;
PVector origin;

void settings() {
  size(600,600); 
}

void setup() {
  origin = new PVector(width / 2.0, 0);
}

PVector gravity = new PVector(0, 1);

void draw() {
  background(255);
  
  if(mousePressed) {
    m = new Mover(mouseX, mouseY);
  }
  
  if(m != null) {
    PVector spring = PVector.sub(m.position, origin);
    float currLength = spring.mag();
    spring.normalize();
    float k = 0.1;
    //float stretch = currLength - m.restLength;
   
    //spring.mult(-k * stretch);
    //m.applyForce(spring);
    
    PVector resist = PVector.sub(m.position, origin);
    resist.normalize();
    resist.mult(gravity.mag());
    m.applyForce(PVector.sub(gravity, resist));
    m.update();
    m.display();
  }
}
