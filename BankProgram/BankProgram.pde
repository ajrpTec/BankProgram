//Opgave 1. Skriv kommentarer i programmet, der forklarer hvad programmet gør!
//Opgave 2. Lav kontoen om til et objekt
//Opgave 3. Opret flere konto objekter
//Opgave 4. Opret flere knap objekter
//Opgave 5. Forbind knapperne med hver konto , så du kan indsætte på de forskellige konti
//Udfordring 6. Prøv at udtænk en måde at visualisere konto bevægelser
//Udfordring 7. Prøv at udtænke en måde at give din konto en rente

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
