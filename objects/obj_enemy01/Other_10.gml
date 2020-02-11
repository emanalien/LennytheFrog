/// @description Insert description here
// You can write your code in this editor
if (Collidee.y < y - sprite_height/2) {
	Health -=1;	
	bouncer(Collidee, BounceHeight);
} else {
	Collidee.Health -= Damage;
	bouncer(Collidee, 0, sign(Collidee.y - y) * BounceHeight, 1);
}

