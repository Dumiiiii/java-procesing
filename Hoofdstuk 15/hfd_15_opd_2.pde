class Person {
  String name;
  String geslacht;
  int age;

public Person(String name, String geslacht, int age) {
  this.name =name;
  this.age = age;
  this.geslacht = geslacht;
}

public void toonInformatie() {
  println("name: " + name);
  println("geslacht: " + geslacht);
  println("age: " + age );
}
}

void setup() {
  size(400,400);
  Person myPerson = new Person("Jan", "man", 34);
  myPerson.toonInformatie();
}
