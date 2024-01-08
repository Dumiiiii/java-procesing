

void setup(){
size(500,500);
}

void draw(){
background(255,255,255);
int SizeC= 200;
for(int i = 0; i < 5; i++){

 ellipse( 450 - SizeC/2, 200,SizeC,SizeC);
 SizeC -= 35;

}


}
