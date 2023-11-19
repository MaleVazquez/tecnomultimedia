class Personaje {
  constructor() {
    this.x = width / 2;
    this.y = height - 50;
    this.ancho = 200;
    this.alto = 150;
    this.imagen = loadImage("assets/canasta.png")
  }

  mostrar() {
    fill(0);
   image(this.imagen, this.x - this.ancho / 2, this.y - this.alto / 2, this.ancho, this.alto)
   
  }

  mover() {
    this.x = mouseX;
  }

  colision(objeto) {
    let distancia = dist(this.x, this.y, objeto.x, objeto.y);
    return distancia < this.ancho / 2 + objeto.ancho / 2 && this.y > objeto.y - objeto.alto / 2;
  }
}
