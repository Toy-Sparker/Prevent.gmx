///scrPlayerStepAttack
image_speed = .2;

switch(sprite_index)
{
case sPlayer_l: sprite_index = sPlayertest; break;
case sPlayer_r: sprite_index = sPlayertest; break;
case sPlayer_u: sprite_index = sPlayertest; break;
case sPlayer_d: sprite_index = sPlayertest; break;
}

if(image_index >= 1) && (attacked = false) {
    var xx = 0;
    var yy = 0;
    switch(sprite_index)
    {
        case sPlayer_l: sprite_index = sPlayertest; xx = x-16; yy = y break;
        case sPlayer_r: sprite_index = sPlayertest; xx = x+16; yy = y break;
        case sPlayer_u: sprite_index = sPlayertest; xx = x;    yy = y-30;break;
        case sPlayer_d: sprite_index = sPlayertest; xx = x;    yy = y+30;break;
    }
    var damage = instance_create(xx,yy,oDamage);
    attacked = true;
    damage.creator = id;
}

