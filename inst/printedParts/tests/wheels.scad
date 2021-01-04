// rod wheels driven by stepper motor

// Lab Pulley by Mark Schober <jmschober@gmail.com> 2017
// Additional use details at modelingscience.org
// This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License
// Designed such that 1 unit = 1/32"
// 2" diameter pulley to fit on a 5/8" bearing (R4zz) with a 1/4" shaft (such as a 1/4" bolt)
// Scale diameter to 2" or 50.8mm in slicer software

module disk(){
cylinder(3,32,30);
translate([0,0,3])
    cylinder(3,30,32);
    translate([0,0,6])cylinder(1,32,32);
    translate([0,0,-1])cylinder(1,32,32);    
}

module rim(){
    difference(){
        disk();
    translate([0,0,-3])
    cylinder(20,28,28);
    }
} 

module spokes(){
for (x = [0:36:144]){
    rotate([0,0,x])translate([-29.5,-1.5,-1])cube([59,3,8]);
  }
}

module spokedwheel(){
    rim();
    spokes();
    translate([0,0,-1])cylinder(8,13,13); 
}

difference(){
spokedwheel();
    translate([0,0,-2])cylinder(11,10,10);
//    translate([0,0,-2])cylinder(10,8,8,$fn=100); 
}
