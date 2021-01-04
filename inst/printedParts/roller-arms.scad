// ROLLER ARMS 

// LEFT ROLLER ARM 
difference(){
translate([-60,45,90])
rotate([0,90,0])
cylinder(h =40, d= 30, $fn=200);

translate([-65,45,90])
rotate([0,90,0])
cylinder(h =100, d= 20, $fn=200);
}

// RIGHT ROLLER ARM 
difference(){
translate([-60,-7,90])
rotate([0,90,0])
cylinder(h =40, d= 30, $fn=200);

translate([-65,-7,90])
rotate([0,90,0])
cylinder(h =100, d= 20, $fn=200);
}