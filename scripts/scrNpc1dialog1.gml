///scrNpc1dialog1
var talking = 0;
if(!instance_exists(oText))
{
make_text();
}

//Dialogue
if(talking != 1)
{
talking = 1;
switch(global.next)
                {
                case 0: set_text(120,680,c_blue,0.5, 2.5, "Blue") break;
                case 1: set_text(120,680,c_white,0.5, 2.5, "White") break;
                case 2: set_text(120,680,c_red,0.25, 5, "Red") break;
                case 3: set_text(120,680,c_gray,0.1, 10, "Slow Gray") break;
                case 4: with(oText) { instance_destroy(); } talking = 0; oPlayer.state = scrPlayerStepMove; break;
                }
} if (talking = 0)
{
global.next = 0;
}
