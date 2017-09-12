///scrPlayerCollide();
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
    hspeed = 0;
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
    vspeed = 0;
}
y += vsp;
