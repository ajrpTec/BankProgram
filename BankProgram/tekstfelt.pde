class TekstFelt {
  StringBuffer input = new StringBuffer();
  float x,y;

  TekstFelt(float x, float y){
    this.x = x;
    this.y = y;
  }

  void tegn() {
    rect(x+5, y, 245, 35);
    
    fill(0);
    if(frameCount%20<12)rect(x+75+ input.length()*8,y+3,10,30);
    fill(100);
    rect(x,y,73,35);
    fill(0);
    text("TAST BELØB: " +input.toString() + "   KR", x, y + 25);
  }

  void tilfojTegn() {
    if(key==BACKSPACE && input.length() > 0){
      input.deleteCharAt(input.length()-1);
    }else{
      input.append(key);
    }
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
