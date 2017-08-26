///scrPlayerStepAttack
image_speed = .2;

if(image_index >= 1) && (attacked = false) {
    var xx = 0;
    var yy = 0;
    switch(face)
    {
        case LEFT:  sprite_index = sPlayeratkL; xx = x-16; yy = y    break;
        case RIGHT: sprite_index = sPlayeratkR; xx = x+16; yy = y    break;
        case UP:    sprite_index = sPlayeratkU; xx = x;    yy = y-16;break;
        case DOWN:  sprite_index = sPlayeratkD; xx = x;    yy = y+16;break;
    }
    var damage = instance_create(xx,yy,oDamage);
    attacked = true;
    damage.creator = id;
}

