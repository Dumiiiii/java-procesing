/*  Opdracht NamenLijst
 Probeer in de String[Array] namenLijst de namen Jesse en Kees te vinden met code.
 Als je een naam vindt dan moet je de naam + " gevonden!" printen. Anders "bestaat niet." printen;
 
 Wat gebeurt er en wat lukt er niet?
 
 *Bonus maak hiervan een methode die een naam als parameter krijgt
 
 */

String[] Lijst2  = {"Jacco","Timo","Dima","Tygo","Jason","Max"};

String[] namenLijst = {"Piet", "Joris", "Ronald", "Billy", "Jesse", "Niek", "Kees" };

String naam1 = "Jesse";

Boolean gevonden = false;
void setup(){
  zoeknaam(Lijst2,"Jacco");
  zoeknaam(namenLijst,"Jesse");
}


void zoeknaam(String[] lijst, String naam) {
  for (int i = 0; i < lijst.length; i++) {
    if (lijst[i].equals(naam )) {
      print("gevonden ");

      gevonden = true;
    }
  }
  if (gevonden == false) {
    print("niet gevonden");
  }
}
