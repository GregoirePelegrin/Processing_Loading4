ArrayList<Cube> cubes;
int nbrCubes;
int sizeCube;

void setup(){
  size(600, 600, P3D);
  frameRate(30);
  noFill();
  stroke(255);
  strokeWeight(3);
  colorMode(HSB);
  
  nbrCubes = 10;
  sizeCube = 50;
  
  cubes = new ArrayList<Cube>();
  Cube cube = new Cube(sizeCube);
  cube.setFirst();
  cubes.add(cube);
  for(int i=1; i<nbrCubes; i++){
    cube = new Cube((i+1)*sizeCube);
    cube.setPrecedent(cubes.get(i-1));
    cubes.add(cube);
  }
  cubes.get(0).setPrecedent(cubes.get(nbrCubes-1));
}

void draw(){
  background(0);
  translate(width/2, height/2, 0);
  rotateX(PI/4);
  
  for(Cube cube : cubes){
    cube.update();
    cube.display();
  }
}
