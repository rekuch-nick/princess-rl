if(instance_number(objScreen) > 0){ return; }


justMoved = x != xSpot * 64 || y != ySpot * 64;

if(x < xSpot * 64){ x = clamp(x + moveSpeed, x, xSpot * 64); }
if(x > xSpot * 64){ x = clamp(x - moveSpeed, xSpot * 64, x); }
if(y < ySpot * 64){ y = clamp(y + moveSpeed, y, ySpot * 64); }
if(y > ySpot * 64){ y = clamp(y - moveSpeed, ySpot * 64, y); }


