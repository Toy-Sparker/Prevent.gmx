///scrPlayerStepAttack
image_speed = .2;
if(image_index >= 1) && (attacked = false) {
    var xx = 0;
    var yy = 0;
    var dir = 0;
    switch(face)
    {
        case LEFT:  sprite_index = sPlayeratkL; direction = 180; xx = x-16; yy = y;    break;
        case RIGHT: sprite_index = sPlayeratkR; direction = 0;   xx = x+16; yy = y;    break;
        case UP:    sprite_index = sPlayeratkU; direction = 90;  xx = x;    yy = y-18;break;
        case DOWN:  sprite_index = sPlayeratkD; direction = 270; xx = x;    yy = y+18;break;
    }
    var damage = instance_create(xx,yy,oDamage);
    attacked = true;
    damage.creator = id;
}

