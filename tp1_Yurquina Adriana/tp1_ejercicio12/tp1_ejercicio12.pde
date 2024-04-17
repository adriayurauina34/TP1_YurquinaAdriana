String text_consola="Hola cual es tu nombre:";
String nomb="";
String mensaje="";
void setup() {
  size(500, 500);
  background(19);
  println(text_consola);
  keyPressed();
  dibujar();
}
public void dibujar(){
text (mensaje, 20, 10);
textSize(70);
background(#ff0080);
}
void keyPressed(){
  nomb += key;
  println(nomb);
  if (key == '\n')
  {
    mensaje = "¡Hola " + nomb + "! Bienvenido al curso";
    println(mensaje);
  }
}
