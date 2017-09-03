if(instance_exists(target)) {
    if(dis < sight) {
    state = scrEnemy1StepChase;
    targetx = target.x;
    targety = target.y;
    
    //Check if infighting is false
    if(infight = false)
    {
    target = defaulttarget;
    }  
    
    }else if(dis > sight) {
    state = scrEnemyChooseNextState;
        }   
    } else {
state = scrEnemyChooseNextState;
}
