// Direct drive model 

$fn=150;

// Stepper  motor
translate([4, 0, 0])
cube([32, 42, 42]);

translate([-3, 5, 5])
rotate([0,90,0])
cylinder(40, d = 3, $fn=120);

translate([-3, 37, 5])
rotate([0,90,0])
cylinder(40, d = 3, $fn=120);

translate([-3, 5, 37])
rotate([0,90,0])
cylinder(40, d = 3, $fn=120);

translate([-3, 37, 37])
rotate([0,90,0])
cylinder(40, d = 3, $fn=120);
// END STEPPER


// ROD 
translate([-30, 100,60 ])
rotate([90, 0, 0])
cylinder(h = 200, d = 30);
// END ROD 

// ROLLER MODULE 
module disk(h, d){
cylinder(h, d, d);
translate([0, 0, h])
cylinder(.5 * h, d, d * 1.15);
translate([0, 0, -.33 * h])
cylinder(.5 * h, d * 1.15, d);    
}


// ROLLER 
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

// CENTER DRIVER ROD 
union(){
    translate([-55,15,22])
cube([60, 9.8, 2]);

difference() {
translate([-55,15,15])
cube([60, 10, 10]);

translate([-90,20,20])
rotate([0, 90, 0])
cylinder(h = 100 , d = 6.2, $fn=180);
}
}
// END CENTER DRIVE ROD 


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




// ROD ARMS 

// RIGHT ROD ARM 
rotate([0, 0, 180])
translate([-15, -4, -20])
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
translate([-15, -58, -20])
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