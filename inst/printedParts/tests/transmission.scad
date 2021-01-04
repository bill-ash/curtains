// transmission


module disk(h, d){

cylinder(h, d, d);

translate([0, 0, h])
cylinder(.5 * h, d, d * 1.25);

translate([0, 0, -.33 * h])
cylinder(.5 * h, d * 1.25, d);    
}


//translate([0, 0, 10])
disk(50, 60);
translate([-5, -5, 0])
cube([10, 10, 125]);
