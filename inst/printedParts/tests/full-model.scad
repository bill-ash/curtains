// transmission


module disk(h, d){
cylinder(h, d, d);
translate([0, 0, h])
cylinder(.5 * h, d, d * 1.25);
translate([0, 0, -.33 * h])
cylinder(.5 * h, d * 1.25, d);    
}


// ROLLER 

difference(){
    union(){
rotate([0,90,0])
disk(50, 60);
rotate([0,90,0])
translate([-5, -5, 0])
cube([10, 10, 125]);
    }

translate([-40, 0, -20])
rotate([0, 90, 0])
cylinder(100, 20, 20, $fn=120);
}


// Cylinder comes out of ROLLER 
translate([-40, 0, -19])
rotate([0, 90, 0])
cylinder(100, 18, 18, $fn=120);

// hanging support 
translate([-35, -40, -130])
cube([10, 100, 140]);


// Stepper support 
translate([-35, -40, -130])
cube([200, 100, 10]);


// TOP GEAR 
translate([90, 0, 0])
rotate([0,0,90])

difference(){ 
union(){
minkowski(){
for(i = [0:45:365]){
//translate([30, 30, 10])
rotate([90,i,0])
cylinder(10,40,40,$fn=2);
}
cylinder(r=1,h=1);
}
}

minkowski(){
translate([-5, -20, -5])
cube([10, 100, 10]);
cylinder(r=1,h=1);
}

translate([18, 20, 12])
rotate([90,0,0])
cylinder(100, 10, 10);

translate([-18, 20, -12])
rotate([90,0,0])
cylinder(100, 10, 10);

}



// Bottom GEAR 
translate([90, 0, -76])
rotate([0,7,90])

difference(){ 
union(){
minkowski(){
for(i = [0:45:365]){
//translate([30, 30, 10])
rotate([90,i,0])
cylinder(10,40,40,$fn=2);
}
cylinder(r=1,h=1);
}
}

minkowski(){
translate([-5, -20, -5])
cube([10, 100, 10]);
cylinder(r=1,h=1);
}

translate([18, 20, 12])
rotate([90,0,0])
cylinder(100, 10, 10);

translate([-18, 20, -12])
rotate([90,0,0])
cylinder(100, 10, 10);

}



