module ring(height = 20) {
    difference() {
        cylinder(h=height, r=7, $fn=30, center = true);
        cylinder(h=height, r=5.5, $fn=25, center = true);
    }
}

translate([6.25, 3, 0]) {
    rotate([45, 0, 0]) { ring(); }
}

translate([-6.25, -3, 0]) {
    rotate([-45, 0, 0]) { ring(); }
}

 translate([0, 0, -15]) {
    rotate([0, 90, 0]) { ring(); }
}