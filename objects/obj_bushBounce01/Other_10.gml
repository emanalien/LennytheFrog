/// @description Change player vertical_movemnet

// TODO: Determine whether player is above or to the right
var angle = degtorad(point_direction(x, y, Collidee.x, Collidee.y));

bouncer(Collidee, sin(angle) * 30, cos(angle) * 30, 1);