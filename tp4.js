//Leonela Malena Vazquez
//Comision2
//El video dura 6 minutos, pido perdon por eso. 
//LINK AL VIDEO: https://www.youtube.com/watch?v=7dhG0wyIya8

let canasta; // Variable para la canasta
let fallingObjects = []; // Array para almacenar las imágenes que caen
let score = 0; // Puntuación del jugador
let gameOver = false; // Variable para verificar el estado del juego
let targetScore = 20; // Puntuación objetivo para ganar
let gameWon = false; // Variable para verificar si el juego se ha ganado
let gameEnded = false; // Variable para verificar si el juego ha terminado

let angelImages = [];
let diabloImages = [];

let spawnRate = 60; // generación de objetos (en frames)
let gameStarted = false; // Variable para controlar el estado del juego

function preload() {
  portada = loadImage('data/portada.jpg');
  creditos = loadImage('data/creditos.jpg');
  perdedor = loadImage('data/loser.png');
  ganador = loadImage('data/winner.png');
  canastaImage = loadImage('data/canasta.png');

  // Cargar imágenes de ángeles
  for (let i = 0; i <= 6; i++) {
    angelImages.push(loadImage(`data/angelito${i}.png`));
  }

  // Cargar imágenes de diablos
  for (let i = 0; i <= 6; i++) {
    diabloImages.push(loadImage(`data/diablito${i}.png`));
  }
}

function setup() {
  createCanvas(900, 650);
  // Configurar la canasta
  canasta = new Canasta();
  drawStartScreen(); // Dibuja la pantalla de inicio inicialmente
}

function draw() {
  background(185, 180, 180);

  if (!gameStarted) {
    // Dibuja la pantalla de inicio
    drawStartScreen();
  } else {
    // El juego ha comenzado, dibuja el juego
    // Mover y mostrar la canasta
    canasta.move();
    canasta.display();

    // Actualizar y mostrar las imágenes que caen
    for (let i = fallingObjects.length - 1; i >= 0; i--) {
      let obj = fallingObjects[i];
      obj.update();
      obj.display();

      // Verificar si la canasta atrapa la imagen actual
      if (canasta.intersects(obj)) {
        score++;
        // Eliminar el objeto atrapado
        fallingObjects.splice(i, 1);
      }

      // Verificar si la imagen actual llega al fondo
      if (obj.y > height) {
        // Reducir la puntuación si se escapa una imagen
        if (obj.isAngel) {
          score--;
        }
        // Eliminar el objeto que llegó al fondo
        fallingObjects.splice(i, 1);
      }

      // Verificar si un diablo toca la canasta
      if (!obj.isAngel && canasta.intersects(obj)) {
        loseGame();
      }
    }

    // Mostrar la puntuación
    fill(0);
    textSize(20);
    text('Score: ' + score, 40, 30);

    // Verificar condiciones de victoria o derrota
    if (score >= targetScore) {
      winGame();
    }

    // Generar nuevos objetos cada cierto tiempo
    if (frameCount % spawnRate === 0) {
      spawnFallingObjects(1); // Genera 1 objeto cada 60 frames (1 segundo a 60 fps)
    }
  }
}

function drawStartScreen() {
  // Dibuja la pantalla de inicio con el mensaje "PRESIONE ENTER PARA COMENZAR"
  image(portada, 0, 0, 900, 650);
  textAlign(CENTER, CENTER);
  textSize(32);
  fill(0);
  text('PRESIONE ENTER PARA COMENZAR', width / 2, height / 2);
  textSize(22);
  text('Eres un pingüino atrapado en el limbo, para pasar al cielo asegurate de recolectar 20 angelitos, ¡Pero cuidado! ¡hay diablos queriendo quedarse con tu alma! Asegurate de esquivarlos utilizando las flechas del teclado.', 220, height/2 + 10, 530, 160); 
text('¡CUIDADO! ¡MIENTRAS MÁS ANGELES PIERDES, MÁS PUNTAJE PIERDES!', 470, 40);
  // Comienza el juego cuando se presiona la tecla ENTER
  if (keyIsPressed && keyCode === ENTER) {
    gameStarted = true;
  }
}

function spawnFallingObjects(numObjects) {
  for (let i = 0; i < numObjects; i++) {
    // Elegir aleatoriamente entre ángeles y diablos
    let isAngel = random() < 0.5;
    // Elegir una imagen aleatoria del respectivo grupo
    let img = isAngel ? random(angelImages) : random(diabloImages);
    // Crear un objeto que cae
    fallingObjects.push(new FallingObject(img, isAngel));
  }
}

function winGame() {
  gameWon = true; // Establece el estado de victoria a true
  gameEnded = true; // Establece el estado de juego terminado a true
  // Mostrar mensaje de victoria
  image(creditos, 0, 0, 900, 655);
  textSize(32);
  fill(0);
  text('¡Felicidades has ganado el cielo!', width / 2, 120);
  textSize(24);
  text('PRESIONA LA BARRA ESPACIADORA PARA VOLVER AL INICIO', width/2, 270);
  noLoop();
}

function loseGame() {
  // Mostrar mensaje de derrota
  image(perdedor, 30, -200, 850, 850);
  textSize(32);
  fill(255, 0, 0);
  text('¡HAS PERDIDO EL CIELO!', width / 2, height / 4 - 50);
  textSize(24);
  fill(0);
  text('PRESIONA " R " PARA VOLVER AL INICIO', width / 2, height / 4 + 55);
  gameOver = true;
  gameEnded = true; // Establece el estado de juego terminado a true
  noLoop(); // Detener el bucle del juego
}

class Canasta {
  constructor() {
    this.x = width / 2;
    this.y = height - 100;
    this.width = 140;
    this.height = 190;
    this.direction = 0;
  }

  move() {
    // Mover la canasta según la dirección
    this.x += this.direction * 5;
    // Limitar la canasta dentro de la pantalla
    this.x = constrain(this.x, this.width / 2, width - this.width / 2);
  }

  display() {
    // Dibujar la canasta
    image(canastaImage, this.x - this.width / 2, this.y - this.height / 2, this.width, this.height);
  }

  intersects(object) {
    // Verificar si la canasta atrapa una imagen
    let d = dist(this.x, this.y, object.x, object.y);
    return d < this.width / 2 + object.size / 2;
  }
}

class FallingObject {
  constructor(img, isAngel) {
    this.x = random(width);
    this.y = random(-200, -50);
    this.img = img;
    this.speed = random(3, 5);
    this.size = 160; // Tamaño de la imagen
    this.isAngel = isAngel;
  }

  update() {
    // Mover la imagen hacia abajo
    this.y += this.speed;
  }

  display() {
    // Dibujar la imagen
    image(this.img, this.x - this.size / 2, this.y - this.size / 2, this.size, this.size);
  }
}

function keyPressed() {
  // Controlar el movimiento de la canasta con las flechas del teclado
  if (keyCode === LEFT_ARROW) {
    canasta.direction = -1;
  } else if (keyCode === RIGHT_ARROW) {
    canasta.direction = 1;
  }

  // Agregar esta parte para reiniciar el juego con la tecla R
  if (gameOver && (key === 'r' || key === 'R')) {
    restartGame();
  }

  // Agregar este bloque para reiniciar el juego cuando se presione la barra espaciadora después de ganar
  if (gameWon && keyCode === 32) {
    restartGame();
    gameEnded = false; // Restablece el estado de juego terminado a false
    drawStartScreen(); // Vuelve a la pantalla de inicio
  }

  // Agregar este bloque para volver a la pantalla de inicio (PORTADA) con la barra espaciadora desde cualquier estado
  if (!gameStarted && keyCode === 32 && gameEnded) {
    drawStartScreen(); // Vuelve a la pantalla de inicio
  }
}

function restartGame() {
  // Reinicia el juego
  score = 0;
  gameOver = false;
  gameWon = false; // Restablece el estado de victoria a false
  fallingObjects = [];
  canasta = new Canasta();
  loop(); // Reanuda el bucle del juego
  gameStarted = false; // Restablece el estado del juego a no iniciado
  gameEnded = false; // Restablece el estado de juego terminado a false
}
