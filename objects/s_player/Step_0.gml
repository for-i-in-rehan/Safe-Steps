var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var screenWidth = display_get_width();
var screenHeight = display_get_height();

xspeed = (right - left) * def_speed;
yspeed = (down - up) * def_speed;

x += xspeed;
y += yspeed;


if (x < 0) {
    x = 0; 
}

if (y < 0) {
    y = 0;
}

if (x > room_width - sprite_width / 1) {
    x = room_width - sprite_width / 1; 
}

if (y > room_height - sprite_height / 1) {
    y = room_height - sprite_height / 1; 
}


if (place_meeting(x, y, s_ice)) {

    friction = 0.5;
    
    
    var slip_force = 0.3; 
    var move_input = 0; 
	
    if (keyboard_check(vk_left)) {
        move_input = -1;
    } else if (keyboard_check(vk_right)) {
        move_input = 1;
    }
    

    hspeed += slip_force * move_input;
} else {
   
    friction = 0.2; 
}


if (place_meeting(x, y, s_ice2)) {

    friction = 0.5;
    
    
    var slip_force = 0.3; 
    var move_input = 0; 
	
    if (keyboard_check(vk_left)) {
        move_input = -1;
    } else if (keyboard_check(vk_right)) {
        move_input = 1;
    }
    

    hspeed += slip_force * move_input;
} else {
   
    friction = 0.2; 
}

if (timer_stuck > 0) {
    timer_stuck--;
    if (timer_stuck == 0) {
        
        s_player.hspeed = default_hspeed; 
        s_player.vspeed = default_vspeed; 
    }
}