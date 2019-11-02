class KontoFelt {

  float formue = 0;

  float x=200, y=150;

  KontoFelt(float x, float y){
    this.x = x;
    this.y = y;
  }

  void udskrivKonto() {
    fill(200);
    rect(x,y,250,70);
    fill(0);

    textSize(32);
    text(formue + "KR", x, y + 50);
    textSize(12);
  }
}
