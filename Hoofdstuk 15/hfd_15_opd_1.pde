class rect {
  float x;
  float y;
  float w;


  rect(float x, float y, float w ) {

    this.x = x;
    this.y = y;
    this.w = w;
  }

  void display() {
    rect(x, y, w, w);
  }
}

void setup() {
size(400,400);
rect myrect = new rect(150,200,50);

myrect.display();

}
