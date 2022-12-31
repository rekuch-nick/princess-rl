makeRoom = false;
worldGenClear();
seed = 1;

draw_set_font(fntPlain);
W = 15; H = 11;
layerF = -100;
layerB = -1000;
layerP = -4000;
layerM = -5000;
layerE = -7000;
layerS = -9000;

depth = layerF;

nSTR = 0;
nINT = 1;
nSPD = 2;
nHPL = 5;
nDEF = 6;
nRES = 7;
nEVD = 8;
nLUK = 4;
nAIM = 3;



iWEP = 0;
iDEF = 1;
iRNG = 2;

nextCoinValue = 1;

instance_create_depth(0, 0, layerS, objScreenTitle);