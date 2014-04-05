if(ambulance.speed_current > 0) {
    ambulance.speed_current -= ambulance.deceleration;
} else if(ambulance.speed_current < 0) {
    ambulance.speed_current += ambulance.acceleration;
}

return ambulance.speed_current;
