
void setup(){
  size(400,400);

}

void draw(){
  
background(0,0,0);
stroke(255,255,255);
vierkant(100,100,100,100);

}

void vierkant (int x, int y, int h, int w){
//top line 
line(x,y,x + w,y);
//bottom line 
line (x ,y + h,x + h ,y + h);
// right line 
line(x,y,x,y + h );
//left line 
line(x + h ,y ,x + x ,y + h);
}
