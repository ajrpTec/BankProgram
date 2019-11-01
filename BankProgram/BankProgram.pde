Knap       kontoknap1 = new Knap();
TekstFelt  tekstFelt = new TekstFelt();

void setup(){
  size(1000,500);
  frameRate(60);
}

void draw(){
  clear();
  kontoknap1.tegn();
  kontoknap1.registrerKlik();
  
  tekstFelt.tegn(); 
  
  if(kontoknap1.erKlikket()){
    konto1 = konto1 + tekstFelt.hentBelob();
    tekstFelt.ryd();
  }  
 
   udskrivKonto();
}

void keyPressed(){
  tekstFelt.tilfojTegn();
}
