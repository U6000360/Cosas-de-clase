float x1,x2,x3,y1,y2,y3,x0,y0,tx,ty,xn,yn,sx,sy;

void setup(){

    size(600,600);
    background(255);
    line(width/2,0,width/2,height);
    line(0,height/2,width,height/2);
    x1=width/2;
    y1=height/2;
    x2=width-30;
    y2=height/3;
    x3=width-40;
    y3=height/4;
    beginShape();
    vertex(x1,y1);
    vertex(x2,y2);
    vertex(x3,y3);
    endShape(CLOSE);

//Cálcular el centroide
 calcularCentroide();
//transladar();
TransladarEscalar();
TransladarEscalarOriginal();
}

void calcularCentroide(){
    x0=(x1+x2+x3)/3;
    y0=(y1+y2+y3)/3;
    fill(2,3,4);
    ellipse(x0,y0,5,5);
}

void transladar(){
  tx=ty=20;


float[][] Translacion = {{x1+tx, y1+ty},
                         {x2+tx, y2+ty},
                         {x3+tx, y3+ty}};
                          
  beginShape();

for (int i = 0; i < Translacion.length; i++) {
  for(int j=0;j<Translacion.length-2;j++){
    xn=Translacion[i][j];
    yn=Translacion[i][j+1];
    vertex(xn,yn);
  }
   
}
  endShape(CLOSE);

}
void transladarInversa(){
float[][] TranslacionInversa = {{x1+tx-tx, y1+ty-ty},
                               {x2+tx-tx, y2+ty-ty},
                               {x3+tx-tx, y3+ty-ty}};
 noFill();
 strokeWeight(3);
  stroke(204, 102, 0);
 beginShape();
    vertex(x1,y1);
    vertex(x2,y2);
    vertex(x3,y3);
    endShape(CLOSE);

}

void TransladarCentro(){
float[][]Translacion = {{(x1-x0)+width/2, (y1-y0)+height/2},
                               {x2-x0+width/2, y2-y0+height/2},
                               {x3-x0+width/2, y3-y0+height/2}};
noFill();
 strokeWeight(2);
  stroke(40, 102, 50);
 beginShape();
for (int i = 0; i < Translacion.length; i++) {
  for(int j=0;j<Translacion.length-2;j++){
    xn=Translacion[i][j];
    yn=Translacion[i][j+1];
    vertex(xn,yn);
  }
   
}
    endShape(CLOSE);
}
void TransladarEscalar(){
  sx=sy=0.5;
float[][]Translacion = {{((x1-x0)*sx)+width/2, ((y1-y0)*sy)+height/2},
                        {((x2-x0)*sx)+width/2,((y2-y0)*sy)+height/2},
                               {((x3-x0)*sx)+width/2, ((y3-y0)*sy)+height/2}};
noFill();
 strokeWeight(2);
  stroke(40, 34, 50);
 beginShape();
for (int i = 0; i < Translacion.length; i++) {
  for(int j=0;j<Translacion.length-2;j++){
    xn=Translacion[i][j];
    yn=Translacion[i][j+1];
    vertex(xn,yn);
  }
   
}
    endShape(CLOSE);

}
void TransladarEscalarOriginal(){
  
float[][]Translacion =  {{((x1-x0)*sx)+x0, ((y1-y0)*sy)+y0},
                        {((x2-x0)*sx)+x0,((y2-y0)*sy)+y0},
                               {((x3-x0)*sx)+x0, ((y3-y0)*sy)+y0}};
noFill();
 strokeWeight(3);
  stroke(100, 25, 50);
 beginShape();
 println("Coordenada"+Translacion[0][1]);
for (int i = 0; i < Translacion.length; i++) {
  for(int j=0;j<Translacion.length-2;j++){
    xn=Translacion[i][j];
    yn=Translacion[i][j+1];
    vertex(xn,yn);
  }
   
}
    endShape(CLOSE);




}
