
// ROD ARMS 

// RIGHT ROD ARM 
rotate([0, 0, 180])
translate([-15, -4, -30])
difference(){
    
    union(){
translate([0, 0, 100])
cube([25, 20, 20]);

// EXTENSIONS 
translate([10,10,108])
rotate([0,90,0])
cylinder(h =75, d= 15, $fn=180);
    }

translate([5, 5, 90])
cube([10.5, 10.5, 50]);

translate([-10,10,110])
rotate([0,90,0])
cylinder(h = 20, d= 3.9, $fn=180);

translate([10,30,110])
rotate([90,0,0])
cylinder(h = 15, d= 3.9, $fn=180);


}
// END RIGHT ARM 

// LEFT ROD ARM 
rotate([0, 0, 180])
translate([-15, -58, -30])
difference(){
    
    union(){
translate([0, 0, 100])
cube([25, 20, 20]);

// EXTENSIONS 
translate([10,10,108])
rotate([0,90,0])
cylinder(h =75, d= 15, $fn=180);
    }

translate([5, 5, 90])
cube([10.5, 10.5, 50]);

translate([-10,10,110])
rotate([0,90,0])
cylinder(h = 20, d= 3.9, $fn=180);

translate([10,10,110])
rotate([90,0,0])
cylinder(h = 100, d= 3.9, $fn=180);
}
// END LEFT ARM 

// END ROD ARMS 
