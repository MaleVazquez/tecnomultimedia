//Leonela Malena Vazquez 94030/1
// Comision 2




int Ncuadrados = 19; // Número de cuadrados
int Tcuadrados; // Tamaño del cuadrado más grande

PImage cuadra;

float rotacion = 0; // Ángulo de rotación inicial

void setup() {
  size(800, 400);
  Tcuadrados = width / 2;
  cuadra = loadImage("cuadrado.jpg");
}

void draw() { 
  background(255);
  image(cuadra, 0, 0, 400, 400);
  translate( 600, height /2); // Centra el origen de coordenadas
 
   float factorRotacion = map(mouseY, 0, height, 0, TWO_PI); // Factor de rotación basado en la posición vertical del mouse
  rotacion += factorRotacion; // Actualiza el ángulo de rotación
  
 dibujarCuadrados();
}

void dibujarCuadrados() {
  for (int i = 0; i < Ncuadrados; i++) {
    for (int j = 0; j < Ncuadrados; j++) {
      if ( (i+j)%2 == 0 ) {  //modulo% devuelve el resto de una división: 0 par, 1 impar
        fill(0);
      } else {
        fill(255);
      }

      float tamano = calcularTamanoCuadrado(i); // Calcula el tamaño del cuadrado actual
      float rotacionCuadrado = calcularRotacionCuadrado(i); // Calcula la rotación del cuadrado actual
      
      rotate(rotacionCuadrado); // Aplica la rotación al cuadrado
      rectMode(CENTER); // Dibuja el cuadrado en la posición y tamaño calculados
      noStroke();
      rect(0, 0, tamano, tamano);
    }
  }
}

float calcularTamanoCuadrado(int indice) {
  return Tcuadrados - indice * (Tcuadrados / Ncuadrados);
}

float calcularRotacionCuadrado(int indice) {
  return rotacion * indice / Ncuadrados;
}

void mousePressed() {
  reiniciarPrograma();
}

void reiniciarPrograma() {
  rotacion = 0;
}
