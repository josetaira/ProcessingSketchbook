  class Mover {
    PVector location;
    PVector velocity;
    PVector acceleration;
    
    Mover() {
     location = new PVector(width/2, height/2);
     velocity = new PVector(0,0);
     acceleration = new PVector(0.05, 0);
    }
    
    void update() {
      acceleration = new PVector(mouseX, mouseY);
      acceleration.sub(location);
      velocity.add(acceleration);
      velocity.limit(1);
      location.add(velocity);
    }
    
    void edges() {
     if(location.x > width) location.x = 0;
     if(location.x < 0) location.x = width;
     if(location.y > height) location.y = 0;
     if(location.y < 0) location.y = height;
    }
    
    void display() {
      this.edges();

     stroke(51);
     fill(90);
     ellipse(location.x, location.y, 20, 20);
    }
  }
