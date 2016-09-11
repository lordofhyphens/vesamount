mount_75 = [75/2, -75/2];
mount_100 = [100/2, -100/2];
shift = 2;
difference() {
    union() {
        cube([(8+shift)*25.4, 125, 7], center=true);
        translate([((8+shift)*25.4 - 26)/2,0,0])
            cube([26, 125, 60], center=true);
    }
    translate([(8+shift)*25.4/2 - 30,0,-23.5]) rotate([90,0,0])
    #cylinder(r=20,h=135, center=true);

    translate([(8+shift)*25.4/2 - 30,0,23.5]) rotate([90,0,0])
    #cylinder(r=20,h=135, center=true);
    translate([-(8+shift)*25.4/2 + (60),0,0])
    for (mounting = [mount_75, mount_100])
        for (i = mounting)
            for (j = mounting)  
                #translate([i, j, 0]) cylinder(d=4.7, h=10, center=true, $fn=50);

    for (mounting = [[20, -20]])
        for (i = mounting)
            for (j = mounting)  
                #translate([(8+shift)*25.4/2, i,j]) rotate([0,90,0]) cylinder(d=0.25*25.4, h=30, center=true, $fn=50);

}
