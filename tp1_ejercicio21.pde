PVector puntoA, puntoB, puntoC, puntoD;
int distanciaLinea;
int numEscalones = 10; // Número de escalones a dibujar

void setup() {
  size(500, 500);
  background(19);
  distanciaLinea = 62;
  puntoA = new PVector(0, distanciaLinea);

  // Dibuja los escalones
  for (int i = 0; i < numEscalones; i++) {
    dibujarEscalon();
    dibujarPunto();
  }
}

void dibujarEscalon() {
  stroke(0,191,255);
  strokeWeight(5);
  puntoB = new PVector(puntoA.x + distanciaLinea, puntoA.y);
  line(puntoA.x, puntoA.y, puntoB.x, puntoB.y);
  puntoC = new PVector(puntoB.x, puntoB.y + distanciaLinea);
  line(puntoB.x, puntoB.y, puntoC.x, puntoC.y);
  dibujarPunto(); // Llama a la función para dibujar el punto en cada escalón
  actualizarCoordenadasA();
}

void dibujarPunto() {
  stroke(255, 0, 0);
  puntoD = new PVector(puntoB.x, puntoB.y - 10);
  point(puntoD.x, puntoD.y);
}

void actualizarCoordenadasA() {
  puntoA.x = puntoC.x; // Usa puntoC.x en lugar de puntoC.y
  puntoA.y = puntoC.y;
}
