with(argument0) {
    X = 0;

    if(place_meeting(x,y,exits)) {
    
        if(
            place_meeting(x - sprite_width - 16,y,exits_ne) &&
            y < instance_place(x,y,exits_ne).y + (instance_place(x,y,exits_ne).sprite_height / 2)
        ) {
            instance = instance_place(x,y,exits_ne);
            arc_r = (instance.sprite_height / 2) - 32;
            arc_y = y - (instance.y + 32);
            if(arc_y < 0)
                arc_y = 0;

            X = arc_r - sqrt(sqr(arc_r) - sqr(arc_r - arc_y));
        }
    
        if(
            place_meeting(x + sprite_width + 16,y,exits_nw) &&
            y < instance_place(x,y,exits_nw).y + (instance_place(x,y,exits_nw).sprite_height / 2)
        ) {
            instance = instance_place(x,y,exits_nw);
            arc_r = (instance.sprite_height / 2) - 32;
            arc_y = y - (instance.y + 32);
            if(arc_y < 0)
                arc_y = 0;

            X = arc_r - sqrt(sqr(arc_r) - sqr(arc_r - arc_y));
        }
    
        if(
            place_meeting(x - sprite_width - 16,y,exits_se) &&
            y > instance_place(x,y,exits_se).y + (instance_place(x,y,exits_se).sprite_height / 2)
        ) {
            instance = instance_place(x,y,exits_se);
            arc_r = (instance.sprite_height / 2) - 32;
            arc_y = y - (instance.y + (instance.sprite_height / 2));
            if(arc_y > abs(instance.y_init + (instance.sprite_height / 2)) - 32)
                arc_y = abs(instance.y_init + (instance.sprite_height / 2)) - 32;

            X = -1 * (arc_r - sqrt(sqr(arc_r) - sqr(arc_y)));
        }
    
        if(
            place_meeting(x + sprite_width + 16,y,exits_sw) &&
            y > instance_place(x,y,exits_sw).y + (instance_place(x,y,exits_sw).sprite_height / 2)
        ) {
            instance = instance_place(x,y,exits_sw);
            arc_r = (instance.sprite_height / 2) - 32;
            arc_y = y - (instance.y + (instance.sprite_height / 2));
            if(arc_y > abs(instance.y_init + (instance.sprite_height / 2)) - 32)
                arc_y = abs(instance.y_init + (instance.sprite_height / 2)) - 32;
    
            X = -1 * (arc_r - sqrt(sqr(arc_r) - sqr(arc_y)));
        }
    
    }

    return X;
}
