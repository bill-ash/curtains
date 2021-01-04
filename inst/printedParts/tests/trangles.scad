
minkowski(){
for(i = [0:45:365]){
//translate([30, 30, 10])
rotate([90,i,0])
cylinder(10,40,40,$fn=2);
}
cylinder(r=2,h=1);
}


//translate([30, 30, 10])
//rotate([0,-90,0])
//cylinder(20,20,20,$fn=2);