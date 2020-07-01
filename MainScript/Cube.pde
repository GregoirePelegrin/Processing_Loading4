class Cube{
  float angle;
  float size;
  
  float tempAngleX;
  float tempAngleY;
  
  Cube(float s){
    this.size = s;
    tempAngleX = 0;
    tempAngleY = 0;
  }
  
  void update(){
    this.angle += 0.01;
    
    /*if(this.tempAngleX < PI/3){
      this.tempAngleX += PI/4 / 60;
    } else if(this.tempAngleY < PI/3) {
      this.tempAngleY += PI/4 / 60;
    } else {
      noLoop();
    }*/
  }
  
  void display(){
    rotateX(this.angle);
    rotateY(this.angle);
    box(this.size);
    rotateX(-this.angle);
    rotateY(-this.angle);
    
    /*rotateX(this.tempAngleX);
    rotateZ(this.tempAngleY);
    box(this.size);
    rotateZ(-this.tempAngleY);
    rotateX(-this.tempAngleX);*/
  }
}
