if(instance_exists(target)) {
    if(dis < sight) {
    state = scrEnemy1StepChase;  
    }else if(dis > sight) {
    state = scrEnemyChooseNextState;
        }   
    } else {
state = scrEnemyChooseNextState;
}
