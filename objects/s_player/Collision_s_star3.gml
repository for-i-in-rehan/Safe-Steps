if (place_meeting(x, y, s_star3)) {
	
   
    global.score += 1;
   
    instance_destroy(s_star3); 
	
	
	if (global.score == 3){
	
    show_message("Congratulations! You have collected all the 3 stars in the game. This means you have successfully finished the game. Hope you have learnt about Road Safety!");
    
    room_goto(SS_menu);
	
	global.score = 0;
	
    audio_stop_sound(level_sound);
    
	}
    
}


































