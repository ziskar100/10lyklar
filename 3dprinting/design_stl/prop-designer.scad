$fn=360;
echo ("--------------------------------");
noofblades=3;// 3 to 20
echo("Number of blades is: ",noofblades);
stepsize=360/noofblades;
echo("step size is: ",stepsize);
shaftheight=15;
echo("shaft height is: ",shaftheight);
shaftdiameter=4;
echo("shaft diameter is: ",shaftdiameter);
bladelength=15;
echo("blade length is: ",bladelength);
echo ("--------------------------------");

for(angle= [0:stepsize:360]){
   rotate([0,0,angle])
   prop();
}  
//create the propshaft
difference(){
translate([0,0,-4])
cylinder(d=shaftdiameter+4,h=shaftheight);
translate([0,0,-5])
cylinder(d=shaftdiameter,h=shaftheight+2);
}


module prop(){
linear_extrude(
  height = 8, 
  center = true,
  convexity = 80, 
  twist = 50
  ) 
translate([2, 0, 0])

square([1.5,bladelength]);
}
