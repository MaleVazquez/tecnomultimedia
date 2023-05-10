//Leonela Malena Vazquez
//Comisión 2


int segundos = 1;
int pantalla = 0;
PImage perro1, perro2, perro3;
PFont fuente;

float x = 0;
float y = 200;
float speed = 3;

void setup() {
  size(640, 480);
  textAlign(CENTER);
  textSize(40);
  fuente = loadFont ("AdobeDevanagari-Bold-48.vlw");

  perro1 = loadImage("perro1.jpg");
  perro2 = loadImage("perro2.jpg");
  perro3 = loadImage("perro3.jpg");
}

void draw() {
  background(0);
  if ( pantalla == 1) {
    image(perro1, 0, 0, width, height);
    textFont(fuente);
    fill(255);
    text("¿Sabías que...?", x, 100);
    x += 1;
    if (x > width) {
      x = 0;
    }
  } else if (pantalla == 2) {
    image(perro2, 0, 0, width, height);
    textFont(fuente);
    fill(255);
    textSize(30);
    text("El perro es un mamífero doméstico \n que pertenece al grupo de los carnívoros. \n Es una subespecie del lobo gris, a quien \n se lo considera como su antepasado, \n y tiene semejanzas con los zorros y los chacales.", width/2, y );
    y += speed;
    if (y > height || y < 0) {
      speed *= -1;
    }
  } else if (pantalla == 3) {
    image(perro3, 0, 0, width, height);
    textFont(fuente);
    fill(255);
    textSize(20);
    text("Puede expresar sus estados de ánimo y comunicarse a través de gestos, \n Puede expresar sus estados de ánimo \n y comunicarse a través de gestos, ladridos, gruñidos, de su postura corporal \n y de los movimientos de la cola. \n Suele tener una mirada expresiva \n y es capaz de establecer vínculos muy afectuosos \n y fieles con los humanos.", x, y);

    x +=1;
    if (x > width) {
      x = 0;
    }
    y += speed;
    if (y > height || y < 0) {
      speed += 1;
    }


    rect(440, 420, 120, 30);
    fill(0);
    textSize(20);
    text("Reiniciar", 500, 440);
  }


  if (frameCount%60==0) {
    segundos++;
  }

  if (segundos >= 3) {
    segundos = 0;
    pantalla++;
  }

  if (pantalla > 3) {
    pantalla = 1;
  }


  textFont(fuente);
  textSize(25);
  fill(0);
  text(segundos, width/2, height - 50);
}

void mousePressed() {
  if (mouseX >= 440 && mouseX <= 560 && mouseY >= 420 && mouseY <= 450) {

    pantalla = 0;
    segundos = 1;
  }
}
