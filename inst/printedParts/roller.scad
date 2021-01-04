
$fn=150;
module disk(h, d){
cylinder(h, d, d);
translate([0, 0, h])
cylinder(.5 * h, d, d * 1.15);
translate([0, 0, -.33 * h])
cylinder(.5 * h, d * 1.15, d);    
}


// ROLLER 
difference(){

rotate([0,90,0])
disk(18, 25);
rotate([0,90,0])
translate([-5.4, -5.4, -10])
cube([10.8, 10.8, 125]);

}

//translate([40, -21, -21])
//cube([10, 42, 42]);

