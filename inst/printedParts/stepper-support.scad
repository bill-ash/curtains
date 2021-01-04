
// STEPPER PLATE 
// ARMS 
// Support RIGHT 
translate([0, -11.2, -50])
cube([10, 10, 170]);

// Support LEFT
translate([0, 43, -50])
cube([10, 10, 170]);


// Support TOP
translate([0, -10, 45])
cube([10, 55, 10]);

// Support BOTTOM 
translate([0, -10, -10.3])
cube([10, 55, 10]);

// Plate screws 
difference() {
translate([0, -10, 0])
cube([5, 55, 45]);

// center 
translate([-1, 21, 21])
rotate([0, 90, 0])
cylinder(h = 20, d = 35, $fn=180);

//br 
translate([-1, 4.5, 4.5])
rotate([0, 90, 0])
cylinder(h = 20, d = 4.1, $fn=180);


//bl
translate([-1, 37.5, 4.5])
rotate([0, 90, 0])
cylinder(h = 20, d = 4.1, $fn=180);

// tr
translate([-1, 4.5, 37.5])
rotate([0, 90, 0])
cylinder(h = 20, d = 4.1, $fn=180);


//tl 
translate([-1, 37.5, 37.5])
rotate([0, 90, 0])
cylinder(h = 20, d = 4.1, $fn=180);

}
// END STEPPER PLATE 
