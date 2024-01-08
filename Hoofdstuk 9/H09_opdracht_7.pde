

void setup(){
size(500,500);

}

void draw(){
background(255,255,255);
Driehoek(100,100,250,250,175,175);


}


void Driehoek(int x1, int y1, int x2, int y2, int x3, int y3) {
    //line 1 
 line(x1,y1,x2,y2);
 //line 2
 line(x3,y2,x2,x2);
 // line 3
 line(x1,y1,x3,y2);
  
  
  
}
