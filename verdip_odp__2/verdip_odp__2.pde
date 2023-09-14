int cijfer = 9;
boolean diploma = false;
boolean vrijstelling = false;
boolean cumlaude = false;

if (cijfer >8){
  cumlaude = true;
}

if (cumlaude){
  println("Gefeliceteerd");
}
if (cijfer <=5){
  vrijstelling = true;
}
if (vrijstelling){
  println("niet gehaald");
}

if (cijfer ==5){
  diploma= true;
}

if(diploma){
  println("gefeliciteerd");
  
}
