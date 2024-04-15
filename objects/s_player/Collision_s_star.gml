if (place_meeting(x, y, s_star)) {
   
    global.score += 1;
   
    instance_destroy(s_star); 
	
    show_message("Level Completed! Was it easy to dodge cars!");
    
    room_goto(SS_level2);
    
}
















