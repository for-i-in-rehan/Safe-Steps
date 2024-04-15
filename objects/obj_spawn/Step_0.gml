
var spawn_distance = 450;


if (timer_spawn <= 0) {
   
    var spawn_x = room_width; 
    var spawn_y = room_height / 1.9; 
    
    
    var close = false;
    with(s_car) {
        if (distance_to_point(spawn_x, spawn_y) < spawn_distance) {
            close = true;
            break;
        }
    }
    
  
  
    if (!close) {
        var car_new = instance_create_layer(spawn_x, spawn_y, "Instances", s_car);
        car_new.direction = 180; 
        timer_spawn = interval_spanwer;
    }
}
else {
    timer_spawn--;
}
