draw_self();

draw_set_alpha(.5);

if(arrayContainsString("Poison", buffsToGain)){ draw_rectangle_color(x, y, x+64, y+64, c_green, c_green, c_green, c_green, false); }
if(arrayContainsString("Fire", buffsToGain)){ draw_rectangle_color(x, y, x+64, y+64, c_red, c_red, c_red, c_red, false); }
if(arrayContainsString("Slow", buffsToGain)){ draw_rectangle_color(x, y, x+64, y+64, c_blue, c_blue, c_blue, c_blue, false); }


draw_set_alpha(1);