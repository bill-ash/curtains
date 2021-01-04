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