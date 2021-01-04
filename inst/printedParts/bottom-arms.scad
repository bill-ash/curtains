// BOTTOM CONTROL SUPPORT 

difference(){
union() {
// RIGHT BOTTOM ARM 
rotate([0, 0, 180])
translate([-15, -58, -150])

difference(){
    
    union(){
translate([0, 0, 100])
cube([25, 20, 20]);
    }

translate([5, 5, 90])
cube([10.5, 10.5, 50]);

translate([-10,10,110])
rotate([0,90,0])
cylinder(h = 20, d= 3.9, $fn=180);
}

// LEFT BOTTOM ARM 

rotate([0, 0, 180])
translate([-15, -4, -150])

difference(){
    
    union(){
translate([0, 0, 100])
cube([25, 20, 20]);
    }

translate([5, 5, 90])
cube([10.5, 10.5, 50]);

translate([-10,10,110])
rotate([0,90,0])
cylinder(h = 20, d= 3.9, $fn=180);
}


// Bottom support plate 

translate([-50, -14, -50])
cube([65, 70, 4]);
}

translate([-1, -12, -60])
cube([11, 11, 100]);

translate([-1, 42, -60])
cube([11, 11, 100]);

translate([5, -10,-40])
rotate([90,0,0])
cylinder(h =20,d = 4);


translate([5, 60,-40])
rotate([90,0,0])
cylinder(h =20,d = 4);

}
// END BOTTOM CONTROLS 