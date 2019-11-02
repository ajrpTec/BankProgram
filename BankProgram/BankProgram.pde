//Opgave 1. Skriv kommentarer i programmet, der forklarer hvad programmet gør!
//Opgave 2. Giv knappen og tekstfeltet et "bedre" visuelt udtryk
//Opgave 3. Lav kontoen om til et objekt
//Opgave 4. Opret flere konto-objekter
//Opgave 5. Opret flere knap-objekter
//Opgave 6. Forbind knapperne med hver konto , så du kan indsætte på de forskellige konti
//Udfordring 6. Prøv at udtænk en måde at visualisere konto bevægelser
//Udfordring 7. Prøv at udtænke en måde at give din konto en rente

Knap       kontoknap1 = new Knap(10, 5);
TekstFelt  tekstFelt = new TekstFelt(10, 40);
KontoFelt  kontoFelt     = new KontoFelt();

void setup() {
  size(1000, 500);
  frameRate(60);
}

void draw() {
  clear();
  kontoknap1.tegn();
  kontoknap1.registrerKlik();

  tekstFelt.tegn(); 

  if (kontoknap1.erKlikket()) {
    kontoFelt.formue = kontoFelt.formue + tekstFelt.hentBelob();
    tekstFelt.ryd();
  }  

  kontoFelt.udskrivKonto();
}

void keyPressed() {
  tekstFelt.tilfojTegn();
}
