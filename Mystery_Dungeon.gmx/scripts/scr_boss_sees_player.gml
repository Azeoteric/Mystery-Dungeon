///scr_boss_sees_player(vision_radius)

//Sets sees_player to true when player is within range and vision is unobstructed.    
var lengthVector = point_distance(x, y, obj_player.x, obj_player.y);

if((lengthVector < argument0)) {
    return true;
}
return false;
