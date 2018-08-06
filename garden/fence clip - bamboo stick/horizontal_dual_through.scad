module ring(height = 10) {
    difference() {
        cylinder(h=height, r=7, $fn=30, center = true);
        cylinder(h=height, r=5.5, $fn=25, center = true);
    }
}

translate([6.25, 0, 0]) {
    ring(20);
}

translate([-6.25, 0, 0]) {
    ring(20);
}