// Holder for Edge Pro sharpening stones.
// Intended for 3D printing.


// Parameters.
box_width  = 35;
box_height = 30;

first_slot_pos = 15;
slot_spacing   = 20;
num_slots      = 7;

slot_depth = 28;
slot_angle = -15.0;

// Define the cutout for a single stone.
// Using a module so that I can re-use it.
module slot(depth=10, width=28, angle=0.0) {
    rotate([90, -15, 0])
    linear_extrude(height=width, twist=0, center=true, scale=1.0, slices=1, convexity=1) 
    polygon(points=[ [0, 0 - depth],
                     [3, 0 - depth],
                     [3, 4 - depth],
                     [8, 4 - depth],
                     [8, 0],
                     [0, 0] ]);    
};

// Construction.
difference() {
    // The box.
    translate([0, -box_width/2, 0])
    color([0.5, 0.5, 0.5])
    cube(size=[2 * first_slot_pos + (num_slots - 1) * slot_spacing + 8, box_width, box_height] ) ;
    
    // Make slots.
    for(i = [0 : num_slots - 1]) {
        translate([first_slot_pos + i * slot_spacing, 0, box_height])
        color([1, 0, 0])
        slot(depth=slot_depth, angle=slot_angle);
    };
};
