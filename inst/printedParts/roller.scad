$fn=150;

// ROLLER MODULE 
module disk(h, d){
cylinder(h, d, d);
translate([0, 0, h])
cylinder(.5 * h, d, d * 1.15);
translate([0, 0, -.33 * h])
cylinder(.5 * h, d * 1.15, d);    
}

// ROLLER  WHEEL 
translate([-40, 20, 20])

difference(){
    rotate([0,90,0])
    // WHEEL 
    disk(15, 25);

    rotate([0,90,0])
    translate([-5.4, -5.4, -10])
    cube([10.9, 10.9, 125]);
}
// END ROLLER WHEEL 