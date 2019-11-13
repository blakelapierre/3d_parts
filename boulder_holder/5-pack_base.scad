base();

//translate([35, 0, 0]) boulderpack25v();
//translate([-35, 0, 0]) boulderpack25v();


module boulderpack () { 
  cube([63, 22, 133], center = true); 
}

module boulderpack25v() {
  boulderpack();
  translate([0, 25, 0]) boulderpack();
  translate([0, 50, 0]) boulderpack();
  translate([0, -25, 0]) boulderpack();
  translate([0, -50, 0]) boulderpack();    
}

module base() {
  difference() {
    translate([[0, 0, 0]]) cube([10, 128, 139], center = true);
    translate([28, 0, 0]) boulderpack25v();
  }
}