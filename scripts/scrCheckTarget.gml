if(instance_exists(target)) {
    if(distance_to_object(target) < sight) {
    state = scrEnemy1StepChase;  
    } else if(distance_to_object(target) > sight) {
    state = scrEnemyChooseNextState;
        }   
    } else if(!instance_exists(target)) && (instance_exists(oPlayer)) {
    target = defaulttarget
    } else if(!instance_exists(target)) {
state = scrEnemyChooseNextState;
}
