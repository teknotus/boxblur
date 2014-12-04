int rotateColor = 0;
float cubesize = 260;
int sizedelta = 1;
  
void setup(){

//  size(900,700,P3D);
  size(screen.width, screen.height,P3D);
  background(0);
  lights();
}
void draw(){
  rotateColor = (rotateColor + 1) % 360;
  if(c == 1){
    cubesize += (sizedelta * 1.9);
    if(cubesize > 600){
      cubesize -= 300;
    }
  } else {
    cubesize -= sizedelta;
    if(cubesize < 20){
      cubesize += 400;
    }
  }
  pushMatrix();
  rotateZ((2*PI/360)*rotateColor);
  directionalLight(255 * d, 255 * e, 255 * f, -1, -1, -1);
  rotateZ(2*PI/3);
  directionalLight(255 * f, 255 * d, 255 * e, -1, -1, -1);
  rotateZ(2*PI/3);
  directionalLight(255 * e, 255 * f, 255 * d, -1, -1, -1);
  popMatrix();
  float fov = PI/3;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), cameraZ/10.0, cameraZ*10.0);
  translate(width/2, height/2, 0);
  pushMatrix();
  translate(width * b1 - width/2,height * b2 - height/2,0);
  rotateX((-PI/1)* a1);
  rotateY((PI/1)* a2);
  noStroke();
  box(cubesize);
  popMatrix();
}

