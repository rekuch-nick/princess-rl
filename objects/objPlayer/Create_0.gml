event_inherited();
debug = true;

battleSpeed = 1;
debugCombatLog = true;

depth = ww.layerM - 50;
inputCD = 0;
playerGetInput();
checkTile = false;
xDirHeld = 0;
yDirHeld = 0;

movePoints = 3;
movePointMax = 3;

stage = 0;

coins = 0;
coinsMax = 40;

keys = 10;

party[0] = noone;
party[1] = noone;
party[2] = noone;

charSeen = [true, false, false, false, false, false, false, false, false];

gainCharacter(objCombatPlayerMC);
//gainCharacter(objCombatPlayerMonk);
//gainCharacter(objCombatPlayerRogue);