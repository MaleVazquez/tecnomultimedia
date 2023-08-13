//Leonela Malena Vazquez
//Comision 2
//LINK AL VIDEO: https://www.youtube.com/watch?v=uB3Ehm7v054&feature=youtu.be



int Ncuadrados = 20; // Número de cuadrados
int Tcuadrados; // Tamaño del cuadrado más grande
PImage cuadra;
float rotacion = 0; // Ángulo de rotación inicial
boolean activar = false;
color negro, blanco;

void setup() {
  size(800, 400);
  Tcuadrados = width / 2;
  cuadra = loadImage("cuadrado.jpg");
  negro = color (0);
  blanco = color (255);
}

void draw() {
  background(255);
  image(cuadra, 0, 0, 400, 400);
  translate( 600, height /2); // Centra el origen de coordenadas

  float factorRotacion = map(mouseY, 0, height, 0, QUARTER_PI); // Factor de rotación basado en la posición vertical del mouse
  rotacion += factorRotacion; // Actualiza el ángulo de rotación
  dibujarCuadrados();
}

void dibujarCuadrados() {
  for (int i = 0; i < Ncuadrados; i++) {
    for (int j = 0; j < Ncuadrados; j++) {
      if ( (i+j)%2 == 0 ) {
        fill(blanco);
      } else {
        fill(negro);
      }
      float tamano = calcularTamanoCuadrado(i);
      rectMode(CENTER); // Dibuja el cuadrado en la posición y tamaño calculados
      noStroke();
      rect(0, 0, tamano, tamano);
    }
    if (activar == true) {
      float rotacionCuadrado = calcularRotacionCuadrado(i); // Calcula la rotación del cuadrado actual
      rotate(rotacionCuadrado); // Aplica la rotación al cuadrado
    }
  }
}

float calcularTamanoCuadrado(int indice) {
  return Tcuadrados - indice * (Tcuadrados / Ncuadrados);
}

float calcularRotacionCuadrado(int indice) {
  return rotacion * indice / Ncuadrados;
}

void keyPressed() {

  if (key == 'R' || key == 'r') {
    reiniciarPrograma();
  }
}

void mousePressed() {
  if (mouseX > width/2 && mouseX < width && mouseY > 0 && mouseY < height ) {
    activar = true;
    negro = color (random(0, 125));
    blanco = color (random(125, 255));
  }
}

void reiniciarPrograma() {
  activar = false;
  negro = color (0); 
  blanco = color (255);
}
