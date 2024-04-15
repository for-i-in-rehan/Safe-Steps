draw_set_color(c_black); 
draw_rectangle(x - 5, y - 30, x + 5, y + 30, false); 

if (traffic_green) {
    draw_set_color(c_lime); 
} else {
    draw_set_color(c_red); 
}

draw_circle(x, y - 20, 10, false); 
draw_circle(x, y, 10, false); 
draw_circle(x, y + 20, 10, false); 















