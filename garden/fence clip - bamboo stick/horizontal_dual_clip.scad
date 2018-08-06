module ring() {
    difference() {
        cylinder(h=10, r=7, $fn=30, center = true);
        cylinder(h=10, r=5.5, $fn=25, center = true);
    }
}


module bottom() {
    ring();

     translate([0, 0, 3.25]) {
        height = 3.5;
        difference() {
            cylinder(h= height, r=5.5, $fn=25, center = true);
            cylinder(h= height, r=2.5, $fn=25, center = true);
        }
    }
}

module cap() {
    difference() {
        bottom();
        
        rotate([0, 0, 90]) {
            translate([-7, -3, 3]) { 
                cube([14, 6, 2]);
            }
        }
    }
}

translate([6.25, 0, 0]) {
    ring();
}

translate([-6.25, 0, 0]) {
    ring();
}