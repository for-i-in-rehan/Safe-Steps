function Script1(traffic_light_obj) {
    var light = argument0;
    var speed_normal = speed;
    
    
    if (distance_to_object(light) <= 100 && speed > 0) {
        if (!light.traffic_green) {
            speed = 0; 
        } else {
            speed = speed_normal;
        }
    } else {
        speed = speed_normal;
    }
}
