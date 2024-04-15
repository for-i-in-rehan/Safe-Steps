
var spawn_distance = 550;


if (timer_spawn <= 0) {
    var spawn_x = 0; 
    var spawn_y = room_height / 2.7; 
    

  
        var close = false;
        with(s_car2) {
            if (distance_to_point(spawn_x, spawn_y) < spawn_distance) {
                close = true;
                break;
            }
        }
        
        if (!close) {
            var new_car = instance_create_layer(spawn_x, spawn_y, "Instances", s_car2);
            new_car.direction = 0;
            timer_spawn = interval_spanwer;
        }
    } else {
    timer_spawn--;
}