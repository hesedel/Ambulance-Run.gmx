with(argument0) {
    percent = 0;
show_debug_message(string(place_meeting(x,y,exits)));
    if(place_meeting(x,y,exits)) {
        show_debug_message(string(percent));

        if(
            place_meeting(x - sprite_width - 16,y,exits_ne) &&
            y < instance_place(x,y,exits_ne).y + (instance_place(x,y,exits_ne).sprite_height / 2)
        ) {
            instance = instance_place(x,y,exits_ne);
            arc_r = (instance.sprite_height / 2) - exit_entrance;
            arc_y = y - (instance.y + exit_entrance);
            if(arc_y < 0)
                arc_y = 0;

            percent = 1 - (arc_y / arc_r);
            show_debug_message(string(percent));
        }

        if(
            place_meeting(x + sprite_width + 16,y,exits_nw) &&
            y < instance_place(x,y,exits_nw).y + (instance_place(x,y,exits_nw).sprite_height / 2)
        ) {
            instance = instance_place(x,y,exits_nw);
            arc_r = (instance.sprite_height / 2) - exit_entrance;
            arc_y = y - (instance.y + exit_entrance);
            if(arc_y < 0)
                arc_y = 0;

            percent = 1 - (arc_y / arc_r);
        }

        if(
            place_meeting(x - sprite_width - 16,y,exits_se) &&
            y > instance_place(x,y,exits_se).y + (instance_place(x,y,exits_se).sprite_height / 2)
        ) {
            instance = instance_place(x,y,exits_se);
            arc_r = (instance.sprite_height / 2) - exit_entrance;
            arc_y = y - (instance.y + (instance.sprite_height / 2));
            if(arc_y > abs(instance.y_init + (instance.sprite_height / 2)) - exit_entrance)
                arc_y = abs(instance.y_init + (instance.sprite_height / 2)) - exit_entrance;

            percent = arc_y / arc_r;
        }

        if(
            place_meeting(x + sprite_width + 16,y,exits_sw) &&
            y > instance_place(x,y,exits_sw).y + (instance_place(x,y,exits_sw).sprite_height / 2)
        ) {
            instance = instance_place(x,y,exits_sw);
            arc_r = (instance.sprite_height / 2) - exit_entrance;
            arc_y = y - (instance.y + (instance.sprite_height / 2));
            if(arc_y > abs(instance.y_init + (instance.sprite_height / 2)) - exit_entrance)
                arc_y = abs(instance.y_init + (instance.sprite_height / 2)) - exit_entrance;

            percent = arc_y / arc_r;
        }

    }

    return percent;
}
