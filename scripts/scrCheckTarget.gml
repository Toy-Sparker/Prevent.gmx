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
    } else {
    state = scrEnemyChooseNextState;
        }   
    } else {
state = scrEnemyChooseNextState;
}
