/*PlayerMovement*/
key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W")); 

move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) {
vsp = vsp + grav;
}

if (place_meeting(x, y + 1, oGroundParent)){ 
vsp = key_jump * -jumpspeed;
}

if (place_meeting(x + hsp, y, oGroundParent)){ 
   while(not place_meeting(x + sign(hsp), y, oGroundParent)){
       x = x + sign(hsp);
   }
    hsp = 0;
}
if (place_meeting(x, y + vsp, oGroundParent)){ 
   while(not place_meeting(x, y + sign(vsp), oGroundParent)){
       y = y + sign(vsp);
   }
    vsp = 0;
}

x = x + hsp;
y = y + vsp;
