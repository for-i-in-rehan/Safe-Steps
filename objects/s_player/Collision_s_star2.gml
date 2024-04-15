if (place_meeting(x, y, s_star2)) {
   
    global.score += 1;
   
    instance_destroy(s_star2); 
	
    show_message("Level Completed! Did you avoid the black ice!");
    
    room_goto(SS_level3);
    
    
    
}
