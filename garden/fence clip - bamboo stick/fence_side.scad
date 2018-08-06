module fence_attachment() {
    difference() {
        cube([14, 14.5, 41.75]);
        translate([0, 0, 1]) { cube([14, 13, 39.75]); }
    }
}

module ring() {
    difference() {
        cylinder(h=20, r=7, $fn=30, center = true);
        cylinder(h=20, r=5.5, $fn=25, center = true);
    }
}


module bottom() {
    ring();

     translate([0, 0, 8.25]) {
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
            translate([-7, -3, 8]) { 
                cube([14, 6, 2]);
            }
        }
    }
}

fence_attachment();

translate([7, 10, -6]) {
    rotate([90, 90, 0]) {
        cap();
    }
}
