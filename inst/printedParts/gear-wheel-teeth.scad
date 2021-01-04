// Geared wheel with teeth

rotate([90,0,0])

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




