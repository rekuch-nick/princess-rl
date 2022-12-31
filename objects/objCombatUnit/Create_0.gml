image_xscale = 4; image_yscale = 4;
MC = false;
cursor = 0;

x1 = x;
y1 = y;

aly = -1;

className = "Someone";

hp = 100;
hpBase = 90;

ct = 0;
ctMax = 6000;

level = 1;
xp = 0;

buffs = ds_list_create();
tar = noone;




for(var i=0; i<9; i++){
	statBase[i] = 10; statGrow[i] = 1;
}
statGrow[ww.nDEF] = 0;
statGrow[ww.nHPL] = 0;

item[ww.iWEP] = noone;
item[ww.iDEF] = noone;
item[ww.iRNG] = noone;

state = "idle";


fBasic = sprite_index;
fStriking = sprite_index;
fDown = sprite_index;
fBackStrike = sprite_index;

aniCD = 0;
aniCDStrike = 40;
aniCDBolt = 80;

tar = noone;

actions = ["Strike"];

