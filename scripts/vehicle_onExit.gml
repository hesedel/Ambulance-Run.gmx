with(argument0) {
    if(place_meeting(x,y,exits)) {
        if(
            place_meeting(x - sprite_width - 16,y,exits_ne) &&
            y < instance_place(x,y,exits_ne).y + (instance_place(x,y,exits_ne).sprite_height / 2)
        )
            return true;
        if(
            place_meeting(x + sprite_width + 16,y,exits_nw) &&
            y < instance_place(x,y,exits_nw).y + (instance_place(x,y,exits_nw).sprite_height / 2)
        )
            return true;
        if(
            place_meeting(x - sprite_width - 16,y,exits_se) &&
            y > instance_place(x,y,exits_se).y + (instance_place(x,y,exits_se).sprite_height / 2)
        )
            return true;
        if(
            place_meeting(x + sprite_width + 16,y,exits_sw) &&
            y > instance_place(x,y,exits_sw).y + (instance_place(x,y,exits_sw).sprite_height / 2)
        )
            return true;
    }
}
return false;
