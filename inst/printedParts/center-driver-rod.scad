// CENTER DRIVER ROD 
union(){
    translate([-55,15,21.2])
    cube([60, 10, 2]);

difference() {
translate([-55,15,15])
cube([60, 10, 10]);

translate([-90,20,20])
rotate([0, 90, 0])
cylinder(h = 100 , d = 5.5, $fn=180);
}
}
// END CENTER DRIVE ROD 
