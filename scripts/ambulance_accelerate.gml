if(keyboard_check(vk_up)) {
    /*if(keyboard_check(vk_lshift)) {
        if(ambulance.speed_current < ambulance.speed_max_2)
            ambulance.speed_current += ambulance.acceleration * 2;
        else
            ambulance.speed_current += ambulance.acceleration_2;
    }
    else */if(ambulance.speed_current < ambulance.speed_max + ((level - 1) / 2))
        ambulance.speed_current += ambulance.acceleration; // + ((level - 1) / 10);
    else if(ambulance.speed_current > ambulance.speed_max + ((level - 1) / 2))
        ambulance.speed_current -= ambulance.deceleration;
}
else if(keyboard_check(vk_down)) {
    if(ambulance.speed_current > 0)
        ambulance.speed_current -= ambulance.deceleration_break; // + ((level - 1) / 10);
    else if(ambulance.speed_current > -ambulance.speed_reverse_max)
        ambulance.speed_current -= ambulance.acceleration;
}

return ambulance.speed_current;
