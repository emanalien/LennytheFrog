/// @description Only Kill if player is moving vertically towards the spikes
//if (sign(y - other.y) == sign(other.vertical_movement )) {
//	other.Health = 0;
//}
if (other.vertical_movement > 1) {
	other.Health = 0;	
}