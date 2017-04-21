///(xi, yi, dir, speed, bulletHeight, invincibilityFrames, splash_timer)

var projectile = (instance_create(argument0, argument1, obj_arrow_projectile));
projectile.hspeed = lengthdir_x(argument3, argument2);
projectile.vspeed = lengthdir_y(argument3, argument2);
projectile.speedFactor = argument3;
projectile.bulletHeight = argument4;
projectile.invincibilityFrames = argument5;
projectile.splash_timer = argument6;
