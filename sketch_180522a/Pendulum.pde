class Pendulum {
   PVector pos;
   PVector velocity;
   PVector acceleration;
   
   PVector origin;
   float length;
   
   float mass = 1;
   float angle = 0;
   float aVel = 0;
   
   public static final float GRAVITATIONAL_CONSTANT = -0.01;
   
   Pendulum(float x, float y) {
      this.pos = new PVector(x, y); 
      this.velocity = new PVector(0, 0);
      this.acceleration = new PVector(0, 0);
      
      //this.dist = PVector.sub(this.pos, new PVector(width/2.0, 0)).mag();
      this.origin = new PVector(width/2.0, 0);
      this.length = this.pos.dist(this.origin);
      this.angle = getPendulumAngle();
   }
   
   float getForceOfThePendulum() {
     return -0.01 * gravity() * this.angle;
   }
   
   float getPendulumAngle() {
     return asin((this.pos.x - width/2.0) / this.length);
   }
   
   float gravity() {
     return 0.5 * this.mass;
   }
   
   void update() {
     
     float acc = this.getForceOfThePendulum();
     this.aVel += acc;
     this.angle += this.aVel;
     
     // Fake reduction of velocity over time
     // This should really be due to air resistance
     this.aVel *= 0.999;
     
     this.pos.x = this.origin.x + length * sin(angle);
     this.pos.y = this.origin.y + length * cos(angle);
   }
   
   void display() {
     
     
     
     stroke(0);
     strokeWeight(1);
     line(this.pos.x, this.pos.y, this.origin.x, this.origin.y);
      stroke(0);
      strokeWeight(5);
      fill(200);
      
      ellipse(this.pos.x, this.pos.y, 10, 10);
   }
}
