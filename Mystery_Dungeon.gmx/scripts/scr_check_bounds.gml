///scr_check_bounds(x, y, xMin, xMax, yMin, yMax, delta);
cx = argument[0];
cy = argument[1];
xMin = argument[2];
xMax = argument[3];
yMin = argument[4];
yMax = argument[5];
delta = argument[6];

return (cx - delta > xMin) && (cx + delta < xMax) && (cy - delta > yMin) && (cy + delta < yMax);


