
//fine tune x / y position for mount here.
//mount holes will stay fixed relative and shift either X or Y offset

mount_offset_x = 0;
mount_offset_y = 0;
mountshape = ([[30,0],[24,30],[37,30],[37,10],[85,10],[85,0]]);

lgx_offset_x = 0;
lgx_offset_y = 0;


//no need to modify below these lines

$fn=100;
buffer = 15;
end=45;

tophole_x=end-buffer+15;
tophole_y=4.25;

bothole_x=end-buffer-9.3333+10;
bothole_y=22;

module pcb_mount_cylinders()
{


    difference()
    {   
            union()
            {          
            translate([tophole_x,tophole_y,0])
            cylinder(h=4.5, r=8/2);
                
            translate([bothole_x,bothole_y,0])
            cylinder(h=4.5, r=8/2);   
            }
    
     }        
}

module pcb_mount_cylholes()
{
    
            //mounting holes
            translate([tophole_x,tophole_y,0])
            cylinder(h=5.1, r=4.6/2);
                
            translate([bothole_x,bothole_y,0])
            cylinder(h=5.1, r=4.6/2);      
}

difference()
{

        union()
        {
            minkowski()
            {
                linear_extrude(1.5)
                polygon(mountshape);
                cylinder(r=1);
            }

            //fine tune the movement here of cylinder mounts
            translate([mount_offset_x,mount_offset_y,0])
            {
                pcb_mount_cylinders();
            }
        }


        translate([mount_offset_x,mount_offset_y,0])
        {
            pcb_mount_cylholes();
        }

        translate([lgx_offset_x,lgx_offset_y,0])
        {
            translate([60,3,0])
            cylinder(h=2.6, r=3.2/2);
                
            translate([80,3,0])
            cylinder(h=2.6, r=3.2/2);
        }
}


