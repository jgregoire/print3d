$fn=100;

scale([5, 5, 1]) difference() {
    color("brown") linear_extrude (10) hull() {
        color("red")    translate([  0,  20]) scale([4, 1]) circle(5);
        color("green")  translate([  0, -20]) scale([4, 1]) circle(5);
        color("blue")   translate([-20,   0]) scale([1, 4]) circle(5);
        color("yellow") translate([ 20,   0]) scale([1, 4]) circle(5);

        color("cyan") translate([ 17,  17])  circle(5);
        color("cyan") translate([ 17, -17])  circle(5);
        color("cyan") translate([-17,  17]) circle(5);
        color("cyan") translate([-17, -17]) circle(5);
    }

    color ("black") translate([0, 0, -5]) scale([0.75, 0.75, 2]) linear_extrude(10) hull() {
        color("red")    translate([  0,  20]) scale([4, 1]) circle(5);
        color("green")  translate([  0, -20]) scale([4, 1]) circle(5);
        color("blue")   translate([-20,   0]) scale([1, 4]) circle(5);
        color("yellow") translate([ 20,   0]) scale([1, 4]) circle(5);

        color("cyan") translate([ 17,  17])  circle(5);
        color("cyan") translate([ 17, -17])  circle(5);
        color("cyan") translate([-17,  17]) circle(5);
        color("cyan") translate([-17, -17]) circle(5);
    }
}