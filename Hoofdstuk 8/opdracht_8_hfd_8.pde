int getaal = 0; 
int getaaleen = 0;
int getaaltwee = 1; 

println(0);
println(1);

for( int i = 0; i < 10; i++){
getaal= getaaleen + getaaltwee;
println(getaal);
getaaleen = getaaltwee;
getaaltwee = getaal;

}
