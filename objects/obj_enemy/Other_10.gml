/// @description Reduce Player Health and destory this instance
with (Collidee) {
	Health -= other.Damage;	
}
instance_destroy(id);