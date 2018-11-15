// get player input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(ord("W"));
//react
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;
if (place_meeting(x, y+1, object0)){
	vsp = key_jump * -jumpspeed	
}

//collision
if (place_meeting(x + hsp, y, object0)){
	while(!place_meeting(x + sign(hsp), y, object0)){
		x += sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x, vsp + y, object0)){
	while(!place_meeting(x, y + sign(vsp), object0)){
		y += sign(vsp);
	}
	vsp = 0;
}

x += hsp;
y += vsp;

