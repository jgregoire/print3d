$fs=0.1;

difference() {
    linear_extrude(5) difference() {
        minkowski() {
            square([110, 90], center=true);
            circle(d=6.5);
        };
        translate([-40,  35]) circle(d=6.5);
        translate([ 40,  35]) circle(d=6.5);
        translate([-40, -35]) circle(d=6.5);
        translate([ 40, -35]) circle(d=6.5);
        square([12.9, 19.2], center=true);
    };
    translate([0,0,3.5])
    linear_extrude(3)
    minkowski() {
        square([15, 21], center=true);
        circle(0.25);
    };
};