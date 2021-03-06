/*Controller*/

   key_left = -(gamepad_axis_value(0, gp_axislh) < -0.5);
   key_right = gamepad_axis_value(0, gp_axislh) > 0.5;
   key_jump = gamepad_button_check(0, gp_face1); 
   
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
