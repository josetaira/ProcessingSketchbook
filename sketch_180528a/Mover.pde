class Mover {
   PVector position;
   PVector velocity;
   PVector acceleration;
   
   Mover(float x, float y) {
     this.position = new PVector(x, y);
     
     this.velocity = new PVector();
     this.acceleration = new PVector();
   }
   
   void applyForce(PVector force) {
     this.acceleration.add(force);
   }
   
   void update() {
     this.velocity.add(this.acceleration);
     this.position.add(this.velocity);
     this.acceleration.mult(0); 
   }
   
   void display() {
     stroke(0);
     strokeWeight(1);
     
     line(origin.x, origin.y, this.position.x, this.position.y);
     
     fill(51);
     ellipse(this.position.x, this.position.y, 20, 20);
   }
}
