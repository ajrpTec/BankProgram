class TekstFelt {
  StringBuffer input = new StringBuffer();

  void tegn() {
    rect(10, 25, 250, 35);
    fill(0);
    text("TAST BELØB: " +input.toString(), 10, 50);
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
