class Frollo {
  constructor() {
    this.x = random(width);
    this.y = 0;
    this.velocidad = 5;
    this.ancho = 120;
    this.alto = 120;
    this.imagen = loadImage("assets/frollo.png")
  }

  mostrar() {
    fill(0, 0, 255);
    image(this.imagen, this.x - this.ancho / 2, this.y - this.alto / 2, this.ancho, this.alto);
  }

  caer() {
    this.y += this.velocidad;

    if (this.y > height + this.alto / 2) {
      this.y = 0;
      this.x = random(width);
    }
  }

  reposicionar() {
    this.x = random(width);
    this.y = 0;
  }
}
