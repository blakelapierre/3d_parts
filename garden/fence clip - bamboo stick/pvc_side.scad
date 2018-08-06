module ring() {
    difference() {
        cylinder(h=10, r=7, $fn=30, center = true);
        cylinder(h=10, r=5.5, $fn=25, center = true);
    }
}


difference() {
    difference() {
        cylinder(r=15, h=14, center=true);
        cylinder(r=13.25, h=14, center=true);
    }
    
    translate([-8, 0, -7]) { cube([18, 33, 14]); }
}

translate([0, -18.25, 0]) { 
    rotate([90, 0, 0]) { ring(); }
}