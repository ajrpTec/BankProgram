class TekstFelt {
  StringBuffer input = new StringBuffer();
  float x,y;

  TekstFelt(float x, float y){
    this.x = x;
    this.y = y;
  }

  void tegn() {
    rect(x, y, 250, 35);
    fill(0);
    text("TAST BELØB: " +input.toString() + " KR", x, y + 25);
  }

  void tilfojTegn() {
    input.append(key);
  }

  void ryd() {
    input.delete(0, input.length());
  }
  
  float hentBelob(){
    float belob = 0;
    if(input.length() > 0){
      belob =  Float.parseFloat(input.toString());
    }
    
    return belob;
    
  }
}
