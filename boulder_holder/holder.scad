module boulder_cutout() {
    cube([22.325, 20, 20], center = true);
}

module boulder_holder()
{
    difference() {
        cube([110, 20, 20], center = true);
        translate([1.5 * 110/4, 0, 7.5]) boulder_cutout();   
        translate([0.5 * 110/4, 0, 7.5]) boulder_cutout();
        translate([0.5 * -110/4, 0, 7.5]) boulder_cutout();
        translate([1.5 * -110/4, 0, 7.5]) boulder_cutout();
    }
}

boulder_holder();