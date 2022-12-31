event_inherited();
className = "Goon " + string(irandom_range(0, 99));

aly = -1;

fStriking = imgMobGoonStrike;

statBase[ww.nSTR] = 5;
statBase[ww.nINT] = 5;
statBase[ww.nSPD] = 8;
statBase[ww.nAIM] = 0;
statBase[ww.nLUK] = 0;
statBase[ww.nHPL] = 10;
statBase[ww.nDEF] = 0;
statBase[ww.nRES] = 0;
statBase[ww.nEVD] = 20;

hpBase = 30;
hp = hpMax(id);

//ds_list_add(buffs, getBuff("Venom", 1));