int base;
int altura;

void setup() {
  size(400, 200);
  background(255);
  
  //   ingresamos la base y la altura del rectángulo
  base = int(input("Ingrese la base del rectángulo:"));
  altura = int(input("Ingrese la altura del rectángulo:"));
  
  // Calculamos el perímetro y el área del rectángulo
  int perimetro = 2 * (base + altura);
  int area = base * altura;
  
  // Mostrar los resultados por pantalla
  textAlign(CENTER, CENTER);
  textSize(16);
  fill(0);
  text("El perímetro del rectángulo es: " + perimetro, width/2, height/2 - 20);
  text("El área del rectángulo es: " + area, width/2, height/2 + 20);
}
