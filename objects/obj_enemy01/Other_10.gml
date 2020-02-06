/// @description Called from Lenny, removes health if jumped on.
if (Collidee.y < y) {
	Health -= 1;	
}
bouncer(Collidee, BounceHeight);