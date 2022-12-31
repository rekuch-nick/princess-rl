draw_self();

var a = 64; var b = 32;
if(pc.x < room_width / 4 && pc.y < room_height / 3){ a = room_width - 64; }

var s = string( floor((coins / coinsMax) * 100) ) + "%";

draw_set_halign(fa_center);
draw_text_color(a, b, s, c_lime, c_lime, c_lime, c_lime, .4);
draw_set_halign(fa_left);

