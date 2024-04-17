// declaro los puntos
PVector puntoA, puntoB, puntoC, puntoD;
int distanciaLinea;
int numEscalones = 10; // Número de escalones que dibujo
// el metodo principal
 public void setup() {
  size(500, 500);
  distanciaLinea = 62;
  puntoA = new PVector(0, distanciaLinea);

  // Dibujar los escalones
  for (int i = 0; i < numEscalones; i++) {
    dibujarEscalon();
dibujarPunto();
  }
}

void dibujarEscalon() {
  stroke(#11F0DF);
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
