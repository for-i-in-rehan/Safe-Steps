
image_angle = 180;

var speed_base = 3.5; 
var speed_random =  speed_base + random_range(-1, 1);
motion_set(direction, speed_random);


var target_x = -sprite_width; 
x += lerp(0.1, speed_random, 0.5);

if (x < -sprite_width || x > room_width + sprite_width || y < -sprite_height || y > room_height + sprite_height) {
    
    instance_destroy();
}


var car_other = instance_position(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), s_car);
if(car_other != noone) {
    if(distance_to_object(car_other) < car_distance) {
        
        direction += 180; 
    }
}





Script1(traffic_light);


Script1(traffic_light2);
