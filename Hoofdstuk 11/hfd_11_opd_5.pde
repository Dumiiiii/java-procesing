String zoeknaam = "Tygo";
boolean gevonden = false;
String[] naam = {"Pieter", "Jacoo", "Jacco" , "Tygo"};

void setup() {

  for (int i = 0; i< naam.length; i++) {
    if (zoeknaam == naam[i]) {
      gevonden = true;
    }
  }
  if (gevonden){
    println("de naam is " + zoeknaam + " die bestaat");
  }else{
    println("de naam is niet gevonden " + zoeknaam + "  bestaat niet ");
  }
}
