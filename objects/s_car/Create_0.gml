speed = irandom_range(1, 3); 
image_speed = 1; 


var car_distance = 300;



direction = 180; 

var sprite_random = irandom(2);

if (sprite_random == 0) {
    sprite_index = b_car;
} else if (sprite_random == 1) {
    sprite_index = b_car2;
} else {
    sprite_index = b_car3;
}

stopped_timer = 0; 
stopped_duration = irandom_range(30, 60); 