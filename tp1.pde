
//Zapata Samira
//tp1, comision 1

boolean iniciar = true;
boolean reiniciar = false;
PImage glaciar1, glaciar2, glaciiar3;
PFont fuente;
float posX, posY, ancho, alto, pX, pY;


int segundos = 0;
void setup() {
  size(640, 480);
  fuente = loadFont("NimbusMonoPS-Bold-48.vlw");
  textFont(fuente);
  segundos = 0;
  iniciar = false;
reiniciar = true;
  posX = 550;
  posY = 420;
  ancho = 30;
  alto = 30;
  pX = width;

  glaciar1 = loadImage("glaciar1.jpg");
  glaciar2 = loadImage("glaciar2.jpg");
  glaciiar3 = loadImage("glaciiar3.jpg");
}

void draw() {
  background(0);

  if (iniciar) {
    if (frameCount % 60 == 0) {
      segundos++;
    }
  }

  if (segundos == 0) {
    textAlign(CENTER);
    textSize(35);
    text("Presionar", width/2, height/2);
    rect(500, 440, 140, 30);
    fill(200);
    text("Empezar", posX + ancho/2, posY + alto/2);
  } else if (segundos >= 1 && segundos <= 10) { 
    image(glaciar1, 0, 0);
    fill(0);
    textAlign(CENTER);
    text("El Glaciar Perito Moreno", pX, height/2);
    if (pX > -textWidth("El Glaciar Perito Moreno")/2) {
      pX--;
    }
  } else if (segundos >= 11 && segundos <= 20) {
    image(glaciar2, 0, 0);
    String texto = "Es una gruesa masa de";
    String texto2 = " hielo ubicada en Santa Cruz";
    float textoAncho = textWidth(texto);
    int posY = (int) map(pY, height + 100, -100, -100, height + 100);
    int alpha = (int) map(posY, -100, height + 100, 0, 255); 
    fill(0, alpha);
    if (pY < height + 100) {
      pY++;
    }
    textAlign(CENTER);
    text(texto, width / 2, posY);
    text(texto2, width / 2, posY + 40);
  } else if (segundos >= 21 && segundos <= 30) { 
    image(glaciiar3, 0, 0);
    textSize(25);
    textAlign(CENTER);
    fill(0, 0, 0); 
    text("El nombre del glaciar hace honor ", width/2, pY);
    text("a Francisco Moreno, director del museo", width/2, pY + 20);
    text("de la Sociedad Científica Argentina", width/2, pY + 40);
    if (pY > -40) { 
      pY--;
    }
  }
  if (segundos >= 31 && segundos <= 41)  {
    textAlign(CENTER);
    textSize(35);
    text("Reinciar", width/2, height/2);
    rect(500, 440, 140, 30);
    fill(200);
   if (reiniciar){
     segundos = 0;
      pX = width;
      pY = height + 100;
      iniciar = false;
      reiniciar = false;
    }
}
}

void mousePressed() {
  if (mouseX >= posX && mouseX <= posX + ancho && mouseY >= posY && mouseY <= posY + alto) {
    iniciar = true;
  }
  if (mouseX >= posX && mouseX <= posX + ancho && mouseY >= posY && mouseY <= posY + alto && segundos >= 31) {
    reiniciar = true;
    iniciar = false;
    segundos = 0;
    pX = width;
    pY = height + 100;
  }
}
