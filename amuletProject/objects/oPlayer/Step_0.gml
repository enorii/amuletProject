// get player input
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(ord("W"));
//react
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grav

if (place_meeting(x, y + 1, oWall)) && (key_jump){
	vsp = -7
}

//collision
if (place_meeting(x + hsp, y, oWall)){
	while (!place_meeting(x + sign(hsp), y, oWall)){
		x = x + sign (hsp);
	}
	hsp = 0;
}
x = x + hsp;

// vertical collision
if (place_meeting(x, y + vsp, oWall)){
	while (!place_meeting(x, y + sign(vsp), oWall)){
		y = y + sign (vsp);
	}
	vsp = 0;
}
y = y + vsp;

//animation
if (!place_meeting(x, y + 1, oWall)) {
	sprite_index = sprPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1;
	else image_index = 0;
}
else {
	image_speed = 1;
	if (hsp == 0){
		sprite_index = sprPlayer;
	}
	else {
		sprite_index = sprPlayerR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
