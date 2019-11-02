//Opgave 1. Skriv kommentarer i programmet, der forklarer hvad programmet gør!
//Opgave 2. Giv knappen og tekstfeltet et "bedre" visuelt udtryk
//Opgave 3. Lav kontoen om til et objekt
//Opgave 4. Opret flere konto-objekter
//Opgave 5. Opret flere knap-objekter
//Opgave 6. Forbind knapperne med hver konto , så du kan indsætte på de forskellige konti
//Udfordring 6. Prøv at udtænk en måde at visualisere konto bevægelser
//Udfordring 7. Prøv at udtænke en måde at give din konto en rente

Knap       kontoknap1 = new Knap(30, 100);
Knap       kontoknap2 = new Knap(330, 100);

TekstFelt  tekstFelt = new TekstFelt(30, 40);

KontoFelt  kontoFelt1     = new KontoFelt(30,150);
KontoFelt  kontoFelt2     = new KontoFelt(330,150);

void setup() {
  size(1000, 500);
  frameRate(60);
  kontoknap1.tekst = "Tryk for indsæt beløb på KONTO1";
  kontoknap2.tekst = "Tryk for indsæt beløb på KONTO2";
}

void draw() {
  clear();
  kontoknap1.tegn();
  kontoknap1.registrerKlik();

  kontoknap2.tegn();
  kontoknap2.registrerKlik();

  tekstFelt.tegn(); 

  if (kontoknap1.erKlikket()) {
    kontoFelt1.formue = kontoFelt1.formue + tekstFelt.hentBelob();
    tekstFelt.ryd();
  }  

  if (kontoknap2.erKlikket()) {
    kontoFelt2.formue = kontoFelt2.formue + tekstFelt.hentBelob();
    tekstFelt.ryd();
  }  


  kontoFelt1.udskrivKonto();
  kontoFelt2.udskrivKonto();

}

void keyPressed() {
  tekstFelt.tilfojTegn();
}
