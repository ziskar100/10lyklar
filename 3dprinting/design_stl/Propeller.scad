$fn=360;
echo ("--------------------------------");
noofblades=2;// 3 to 20
echo("Number of blades is: ",noofblades);
stepsize=360/noofblades;
echo("step size is: ",stepsize);
shaftheight=15;
echo("shaft height is: ",shaftheight);
shaftdiameter=1.9;
echo("shaft diameter is: ",shaftdiameter);
bladelength=10;
echo("blade length is: ",bladelength);
echo ("--------------------------------");

for(angle= [0:stepsize:360])
  {
   rotate([0,0,angle])
   prop();
}  
//create the propshaft
difference()
{
translate([0,0,-2])
cylinder(d=shaftdiameter+3,h=shaftheight);
translate([0,0,0])
cylinder(d=shaftdiameter,h=shaftheight);
}

module prop()
{
linear_extrude(
  height = 4, 
  center = true,
  convexity = 80, 
  twist = 35
  ) 
translate([1.2, 0, 0])

square([1.5,bladelength]);
}
