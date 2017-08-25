///scrPlayerStepAttack
image_speed = .2;

switch(sprite_index)
{
case sPlayer_l: sprite_index = sPlayertest; break;
case sPlayer_r: sprite_index = sPlayertest; break;
case sPlayer_u: sprite_index = sPlayertest; break;
case sPlayer_d: sprite_index = sPlayertest; break;
}

if(image_index >= 1) && (attacked = false)
{
attacked = true;
instance_create(x,y,oDamage);
}

