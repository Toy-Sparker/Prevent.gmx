if(instance_exists(target)) {
    var dis = point_distance(x,y,target.x,target.y);
    if(dis < sight) {
    state = scrEnemy1StepChase;
    targetx = target.x;
    targety = target.y;
    if(infight = false)
    {
    target = defaulttarget;
    }
    else
    {
    target = "";
    }
    } else if(dis > sight) {
    state = scrEnemyChooseNextState;
        }   
    } else {
state = scrEnemyChooseNextState;
}
