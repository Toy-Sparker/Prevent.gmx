///Player's Setup

//      Calculate Movement      //
// Set Axis
var xmove = (key_right - key_left);
var ymove = (key_down - key_up);

// Set Direction
var dir = point_direction(0,0,xmove,ymove);

// Set the length
if(xmove == 0 && ymove == 0) {
    len = 0;
} else {
    len = walksp;
}

// Set Hsp & Vsp
hsp = lengthdir_x(len, dir);
vsp = lengthdir_y(len, dir);

//      Collision       //
// Horizontal  Collision
if(place_meeting(x+hsp,y,parCollide))
{
    while(!place_meeting(x+sign(hsp),y,parCollide))
    {
        x = x + sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// Vertical Collision
if(place_meeting(x,y+vsp,parCollide))
{
    while(!place_meeting(x,y+sign(vsp),parCollide))
    {
        y = y + sign(vsp);    
    }
    vsp = 0;
}
y += vsp;

//      Sprites     //
// Control Speed & Image
image_speed = .1;
if(len == 0) image_index = 0;

// Set Horizontal Sprites
if(hsp < 0) sprite_index=sPlayer_r;
if(hsp > 0) sprite_index=sPlayer_l;

// Set Vertical Sprites
if(vsp > 0) sprite_index=sPlayer_d; 
if(vsp < 0) sprite_index=sPlayer_u;

//      NPC     //
//Talk to NPC
if(key_space && distance_to_object(oNpc)<16)
{
state = scrPlayerStepTalk;
}
