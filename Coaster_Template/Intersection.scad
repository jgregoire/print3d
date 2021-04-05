$fa=0.1;
$fn=100;

edge_radius=500;
shift=400;
corner_radius=15;
scale_factor=0.8;

linear_extrude(10) difference() {
    minkowski() {
        circle(corner_radius);
        intersection() {
            color("red")    translate([0, shift])  circle(edge_radius);
            color("green")  translate([0, -shift]) circle(edge_radius);
            color("blue")   translate([shift, 0])  circle(edge_radius);
            color("yellow") translate([-shift, 0]) circle(edge_radius);
        };
    };
    scale([scale_factor, scale_factor]) minkowski() {
        circle(corner_radius);
        intersection() {
            color("red")    translate([0, shift])  circle(edge_radius);
            color("green")  translate([0, -shift]) circle(edge_radius);
            color("blue")   translate([shift, 0])  circle(edge_radius);
            color("yellow") translate([-shift, 0]) circle(edge_radius);
        };
    };
}