// TODO: Not all the cubes are spinning at the same time + solve the angle problem

ArrayList<Cube> cubes;
int nbrCubes;
int sizeCube;

void setup(){
  size(600, 600, P3D);
  frameRate(30);
  noFill();
  stroke(255);
  
  nbrCubes = 1;
  sizeCube = 50;
  
  cubes = new ArrayList<Cube>();
  for(int i=1; i<=nbrCubes; i++){
    Cube cube = new Cube(i*sizeCube);
    cubes.add(cube);
  }
}

void draw(){
  background(0);
  translate(width/2, height/2, 0);
  rotateX(PI/4);
  rotateY(PI/4);
  
  for(Cube cube : cubes){
    cube.update();
    cube.display();
  }
}
