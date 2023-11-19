class Collar {
  constructor() {
    this.x = random(width);
    this.y = random(height / 2);
    this.velocidad = 5;
    this.ancho = 90;
    this.alto = 90;
    this.imagen = loadImage("assets/collar.png")
  }

  mostrar() {
    fill(255, 0, 0);
    image(this.imagen, this.x - this.ancho / 2, this.y - this.alto / 2, this.ancho, this.alto);
  }

  mover() {
    this.y += this.velocidad;

    if (this.y > height) {
      this.reposicionar();
    }
  }

  reposicionar() {
    this.x = random(width);
    this.y = random(height / 2);
  }
}
