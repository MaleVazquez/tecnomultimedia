//Leonela Malena Vazquez TP3
//Comisión 2
//LINK AL VIDEO


PImage[] fondo;
String[] texto;
int pantalla;
int pantallaActual;
int posX, posY;
int botonUnoX, botonDosX, botonTresX, botonEnY, ancho, alto;
PFont fuente;

void setup() {
  size(600, 600);
  pantalla = 17;
  posX = width/2;
  posY = 100;
  fondo = new PImage[pantalla];
  for (int i = 0; i < pantalla; i++) {
    fondo[i] = loadImage("fondos/"+i+".jpeg");
    fondo[i].resize(width, height);
  }
  texto = loadStrings("texto.txt");
  fuente = loadFont("TwCenMT-BoldItalic-30.vlw");
  pantallaActual = 0;
  botonUnoX = width/2-width/4;
  botonDosX = width/2;
  botonTresX = width/2+width/4;
  botonEnY = 500;
  ancho = 120;
  alto = 40;
}

void draw() {
  cargarFondo(pantallaActual);
  textAlign (CENTER);
  textSize (20);
  cargarTexto(pantallaActual);

  if (pantallaActual == 0) {
    dibujarBoton(botonDosX, botonEnY, ancho, alto);
    fill(0);
    text("INICIAR", botonDosX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 1) {
    fill(0);
    dibujarBoton(botonTresX, botonEnY, ancho, alto);
    fill(255);
    text("CONTINUAR", botonTresX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 2) {
    dibujarBoton(botonUnoX, botonEnY, ancho, alto);
    fill(0);
    text("OPCIÓN A", botonUnoX, botonEnY+40, 520, 100);
    dibujarBoton(botonTresX, botonEnY, ancho, alto);
    fill(255);
    text("OPCIÓN B", botonTresX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 3) {
    fill(0);
    dibujarBoton(botonDosX, botonEnY, ancho, alto);
    fill(255);
    text("REINICIAR", botonDosX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 4) {
    fill(0);
    dibujarBoton(botonTresX, botonEnY, ancho, alto);
    fill(255);
    text("CONTINUAR", botonTresX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 5) {
    dibujarBoton(botonUnoX, botonEnY, ancho, alto);
    fill(0);
    text("OPCIÓN A", botonUnoX, botonEnY+40, 520, 100);
    dibujarBoton(botonTresX, botonEnY, ancho, alto);
    fill(255);
    text("OPCIÓN B", botonTresX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 6) {
    fill(0);
    dibujarBoton(botonDosX, botonEnY, ancho, alto);
    fill(255);
    text("REINICIAR", botonDosX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 7) {
    dibujarBoton(botonUnoX, botonEnY, ancho, alto);
    fill(0);
    text("OPCIÓN A", botonUnoX, botonEnY+40, 520, 100);
    dibujarBoton(botonTresX, botonEnY, ancho, alto);
    fill(255);
    text("OPCIÓN B", botonTresX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 8) {
    fill(0);
    dibujarBoton(botonTresX, botonEnY, ancho, alto);
    fill(255);
    text("CONTINUAR", botonTresX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 9) {
    fill(0);
    dibujarBoton(botonDosX, botonEnY, ancho, alto);
    fill(255);
    text("REINICIAR", botonDosX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 10) {
    dibujarBoton(botonUnoX, botonEnY, ancho, alto);
    fill(0);
    text("OPCIÓN A", botonUnoX, botonEnY+40, 520, 100);
    dibujarBoton(botonDosX, botonEnY, ancho, alto);
    fill(255);
    text("OPCIÓN B", botonDosX, botonEnY+40, 520, 100);
    fill(255);
    dibujarBoton(botonTresX, botonEnY, ancho, alto);
    fill(0);
    text("OPCIÓN C", botonTresX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 11) {
    fill(0);
    dibujarBoton(botonDosX, botonEnY, ancho, alto);
    fill(255);
    text("REINICIAR", botonDosX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 12) {
    fill(0);
    dibujarBoton(botonTresX, botonEnY, ancho, alto);
    fill(255);
    text("CONTINUAR", botonTresX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 13) {
    fill(0);
    dibujarBoton(botonDosX, botonEnY, ancho, alto);
    fill(255);
    text("REINICIAR", botonDosX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 14) {
    fill(0);
    dibujarBoton(botonTresX, botonEnY, ancho, alto);
    fill(255);
    text("CONTINUAR", botonTresX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 15) {
    fill(0);
    dibujarBoton(botonDosX, botonEnY, ancho, alto);
    fill(255);
    text("REINICIAR", botonDosX, botonEnY+40, 520, 100);
    fill(255);
    dibujarBoton(botonTresX, botonEnY, ancho, alto);
    fill(0);
    text("CRÉDITOS", botonTresX, botonEnY+40, 520, 100);
  }
  if (pantallaActual == 16) {
    fill(0);
    dibujarBoton(botonDosX, botonEnY, ancho, alto);
    fill(255);
    text("REINICIAR", botonDosX, botonEnY+40, 520, 100);
  }
}



void cargarFondo(int pantalla) {
  image(fondo[pantalla], 0, 0);
}

void cargarTexto(int frase) {
  if (frase == 0) {
    rectMode(CENTER);
    fill(0);
    rect(posX, posY, 380, 70);
    textFont(fuente);
    fill(255);
    text(texto[0], posX, posY, 380, 70);
  } else if (frase == 1) {
    rectMode(CENTER);
    fill(0);
    rect(posX, posY, 520, 140);
    fill(255);
    text(texto[1], posX, posY, 520, 140);
  } else if (frase == 2) {
    rectMode(CENTER);
    fill(0);
    rect(posX, posY, 520, 100);
    fill(255);
    text(texto[2], posX, posY, 520, 100);
  } else if (frase == 3) {
    rectMode(CENTER);
    fill(0);
    rect(posX, posY, 520, 100);
    fill(255);
    text(texto[3], posX, posY, 520, 100);
  } else if (frase == 4) {
    rectMode(CENTER);
    fill(0);
    rect(posX, posY, 520, 100);
    fill(255);
    text(texto[4], posX, posY, 520, 100);
  } else if (frase == 5) {
    rectMode(CENTER);
    fill(0);
    rect(posX, 90, 520, 150);
    fill(255);
    text(texto[5], posX, posY, 500, 150);
  } else if (frase == 6) {
    rectMode(CENTER);
    fill(0);
    rect(posX, 60, 520, 100);
    fill(255);
    text(texto[6], posX, 90, 500, 150);
  } else if (frase == 7) {
    rectMode(CENTER);
    fill(0);
    rect(posX, 60, 520, 100);
    fill(255);
    text(texto[7], posX, posY, 500, 150);
  } else if (frase == 8) {
    rectMode(CENTER);
    fill(0);
    rect(posX, posY, 520, 100);
    fill(255);
    text(texto[8], posX, posY, 520, 100);
  } else if (frase == 9) {
    rectMode(CENTER);
    fill(0);
    rect(posX, posY, 520, 100);
    fill(255);
    text(texto[9], posX, posY, 520, 100);
  } else if (frase == 10) {
    rectMode(CENTER);
    fill(0);
    rect(posX, 50, 520, 140);
    fill(255);
    text(texto[10], posX, 90, 520, 170);
  } else if (frase == 11) {
    rectMode(CENTER);
    fill(0);
    rect(posX, 50, 520, 140);
    fill(255);
    text(texto[11], posX, posY, 520, 140);
  } else if (frase == 12) {
    rectMode(CENTER);
    fill(0);
    rect(posX, posY, 520, 140);
    fill(255);
    text(texto[12], posX, posY, 520, 140);
  } else if (frase == 13) {
    rectMode(CENTER);
    fill(0);
    rect(posX, posY, 520, 50);
    fill(255);
    text(texto[13], posX, posY, 520, 50);
  } else if (frase == 14) {
    rectMode(CENTER);
    fill(0);
    rect(posX, posY, 520, 110);
    fill(255);
    text(texto[14], posX, posY, 520, 100);
  } else if (frase == 15) {
    rectMode(CENTER);
    fill(0);
    rect(posX, 50, 520, 40);
    fill(255);
    text(texto[15], posX, posY, 520, 100);
  } else if (frase == 16) {
    fill(0);
    text(texto[16], posX, posY, 520, 100);
  }
}



void mousePressed() {
  if (pantallaActual == 0 && mouseX > botonDosX - ancho / 2 && mouseX < botonDosX + ancho / 2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 1;
  } else if (pantallaActual == 1 && mouseX > botonTresX - ancho /2 && mouseX < botonTresX + ancho / 2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto / 2) {
    pantallaActual = 2;
  } else if (pantallaActual == 2 && mouseX > botonUnoX - ancho /2 && mouseX < botonUnoX + ancho / 2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto / 2) {
    pantallaActual = 3;
  } else if (pantallaActual == 2 && mouseX > botonTresX - ancho /2 && mouseX < botonTresX + ancho / 2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto / 2) {
    pantallaActual = 4;
  } else if (pantallaActual == 4 && mouseX > botonTresX - ancho /2 && mouseX < botonTresX + ancho / 2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto / 2) {
    pantallaActual = 5;
  } else if (pantallaActual == 5 && mouseX > botonUnoX - ancho /2 && mouseX < botonUnoX + ancho /2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 6;
  } else if (pantallaActual == 5 && mouseX > botonTresX - ancho /2 && mouseX < botonTresX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 7;
  } else if (pantallaActual == 7 && mouseX > botonUnoX - ancho /2 && mouseX < botonUnoX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 8;
  } else if (pantallaActual == 7 && mouseX > botonTresX - ancho /2 && mouseX < botonTresX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 9;
  } else if (pantallaActual == 8 && mouseX > botonTresX - ancho /2 && mouseX < botonTresX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 10;
  } else if (pantallaActual == 10 && mouseX > botonUnoX - ancho /2 && mouseX < botonUnoX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 11;
  } else if (pantallaActual == 10 && mouseX > botonDosX - ancho /2 && mouseX < botonDosX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 12;
  } else if (pantallaActual == 12 && mouseX > botonTresX - ancho /2 && mouseX < botonTresX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 13;
  } else if (pantallaActual == 10 && mouseX > botonTresX - ancho /2 && mouseX < botonTresX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 14;
  } else if (pantallaActual == 14 && mouseX > botonTresX - ancho /2 && mouseX < botonTresX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 15;
  } else if (pantallaActual == 3 && mouseX > botonDosX - ancho /2 && mouseX < botonDosX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 2;
  } else if (pantallaActual == 6 && mouseX > botonDosX - ancho /2 && mouseX < botonDosX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 5;
  } else if (pantallaActual == 9 && mouseX > botonDosX - ancho /2 && mouseX < botonDosX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 7;
  } else if (pantallaActual == 11 && mouseX > botonDosX - ancho /2 && mouseX < botonDosX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 10;
  } else if (pantallaActual == 13 && mouseX > botonDosX - ancho /2 && mouseX < botonDosX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 10;
  } else if (pantallaActual == 15 && mouseX > botonDosX - ancho /2 && mouseX < botonDosX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 0;
  } else if (pantallaActual == 15 && mouseX > botonTresX - ancho /2 && mouseX < botonTresX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 16;
  } else if (pantallaActual == 16 && mouseX > botonDosX - ancho /2 && mouseX < botonDosX + ancho/2 &&
    mouseY > botonEnY - alto / 2 && mouseY < botonEnY + alto /2) {
    pantallaActual = 0;
  }
}


void dibujarBoton(int x, int y, int ladoX, int ladoY) {

  rectMode (CENTER);
  rect (x, y, ladoX, ladoY);
}
