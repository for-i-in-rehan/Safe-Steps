if (place_meeting(x, y, s_tree)) {
   
    x = xprevious;
    y = yprevious;
}


if (place_meeting(x, y, s_tree)) {
 
    if (keyboard_check(vk_right) && !place_meeting(x+1, y, s_tree)) {
        x += 1; 
    }
    if (keyboard_check(vk_left) && !place_meeting(x-1, y, s_tree)) {
        x -= 1; 
    }
    if (keyboard_check(vk_down) && !place_meeting(x, y+1, s_tree)) {
        y += 1; 
    }
    if (keyboard_check(vk_up) && !place_meeting(x, y-1, s_tree)) {
        y -= 1; 
    }
}



