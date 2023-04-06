//COMISION2
//Leonela Malena Vazquez


//pin es una abreviación  

PImage pin ;

void setup (){
  
 
size (800,400);
pin = loadImage ("pinguino.jpg");
  
}
  
void draw (){
background (204,241,252);
image (pin, 430,0);


//FONDO DEL DIBUJO

rect (200, 450, 400,800); //piso
rect (0, 320, 430,850);

fill(198,206,209);
ellipse (50,300, 150,100);


//CUERPO ENTERO
 
noStroke ();

fill (57,57,57);
triangle (180, 280, 200, 300, 120, 300); //pata trasera
fill (255,254,252);
rect (0, 300, 430,850);

fill (8,1,1);
ellipse (255, 205, 50,120); //joroba
fill (8,1,1);
ellipse (247, 240, 45,120); //joroba2
fill (8,1,1);
ellipse (243, 150, 66, 130); //joroba3
fill (255, 254, 252);
ellipse (220, 200, 110, 245); //cuerpo


//PISO

fill (225,230,232); 
ellipse (280, 330, 300, 50);
ellipse (100, 340, 300, 50);
ellipse (200, 355, 300, 50);
ellipse (220, 355, 300, 50);
ellipse (200, 355, 300, 50);



fill (234, 153, 31);
triangle (216, 118, 235,80,170,93); //cuello 
fill (8, 1, 1);
ellipse (240, 210, 30,150); //brazo 

fill (57,57,57);
triangle (250, 300, 250, 325, 170, 324); //pata delantera


//CARA
fill (3,0,0);
ellipse (200, 80, 65,50); //cabeza
fill (255, 255, 255);
ellipse (210, 80, 10, 10); //ojo
stroke (1);
fill (236, 237, 41);
triangle (190, 80, 200, 90, 140, 100); //boca




}
