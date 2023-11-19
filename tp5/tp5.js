//Leonela Malena Vazquez
//Comision 2
//LINK AL VIDEO DE YOUTUBE: https://www.youtube.com/watch?v=5wLQ0Le4-GY
//Pido perdon si me explique mal




let juego;

function setup() {
  createCanvas(windowWidth, windowHeight);
  juego = new Juego();
  iniciarJuego();
}

function draw() {
  juego.dibujar();
}

function keyPressed() {
  juego.keyPressed();
}

function keyReleased() {
  juego.keyReleased();
}

function mousePressed() {
  juego.mousePressed();
}

function iniciarJuego() {
  frameRate(60);
}
