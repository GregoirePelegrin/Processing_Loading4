class Cube{
  Cube precedent;
  float angle;
  float size;
  boolean turning;
  
  Cube(float s){
    this.size = s;
    this.angle = 0;
    this.turning = false;
  }
  
  void update(){
    if(this.precedent.angle >= PI/5){
      this.turning = true;
    }
    if(this.turning){
      this.angle += 0.1;
    }
    if(this.angle >= PI){
      this.turning = false;
      this.angle = 0;
    }
  }
  
  void setFirst(){
    this.turning = true;
  }
  
  void setPrecedent(Cube c){
    this.precedent = c;
  }
  
  void display(){
    stroke(map(this.size, sizeCube, nbrCubes*sizeCube, 0, 127), 255, 255);
    rotateX(this.angle);
    beginShape();
    vertex(0, this.size/2, -this.size/2);
    vertex(0, this.size/2, this.size/2);
    vertex(this.size/2, 0, this.size/2);
    vertex(this.size/2, 0, -this.size/2);  
    endShape(CLOSE);
    beginShape();
    vertex(0, this.size/2, -this.size/2);
    vertex(-this.size/2, 0, -this.size/2);
    vertex(-this.size/2, 0, this.size/2);
    vertex(0, this.size/2, this.size/2);
    endShape(CLOSE);
    beginShape();
    vertex(0, this.size/2, -this.size/2);
    vertex(this.size/2, 0, -this.size/2);
    vertex(0, -this.size/2, -this.size/2);
    vertex(-this.size/2, 0, -this.size/2);    
    endShape(CLOSE);
    beginShape();
    vertex(0, -this.size/2, this.size/2);
    vertex(this.size/2, 0, this.size/2);
    vertex(this.size/2, 0, -this.size/2);
    vertex(0, -this.size/2, -this.size/2);
    endShape(CLOSE);
    beginShape();
    vertex(0, -this.size/2, this.size/2);
    vertex(-this.size/2, 0, this.size/2);
    vertex(-this.size/2, 0, -this.size/2);
    vertex(0, -this.size/2, -this.size/2);
    endShape(CLOSE);
    beginShape();
    vertex(0, -this.size/2, this.size/2);
    vertex(-this.size/2, 0, this.size/2);
    vertex(0, this.size/2, this.size/2);
    vertex(this.size/2, 0, this.size/2);
    endShape(CLOSE);
    rotateX(-this.angle);
  }
}
