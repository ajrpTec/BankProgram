class Knap {

  String tekst    = " Tryk for indsæt beløb på KONTO1";

  float xPosition = 10, yPosition  = 5;
  float hojdeKnap = 25, breddeKnap = 250;

  boolean klikket;


  void tegn() {
    fill(100, 0, 0);
    if (klikket) {
      fill(100, 100, 0);
    }
    rect(xPosition, yPosition, breddeKnap, hojdeKnap);
    fill(255);
    text(tekst, xPosition, yPosition+15);
  }

  void registrerKlik() {
    if (mousePressed && mouseX < xPosition +breddeKnap && mouseX > xPosition && mouseY > yPosition && mouseY < yPosition + hojdeKnap) {
      klikket = true;
    } else {
      klikket = false;
    }
  }

  boolean erKlikket() {
    return klikket;
  }
}
