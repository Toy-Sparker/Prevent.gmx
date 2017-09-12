///scrEnemyChooseNextState
//Checking for targets
scrCheckTarget();

if(alarm[0] <= 0) {
    state = choose(scrEnemy1StepWander, scrEnemy1StepIdle);
    alarm[0] = 30*irandom_range(2,4);
    if(dis > sight) {
    targetx = random(room_width);
    targety = random(room_height);
    }
}
