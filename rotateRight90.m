%function rotateLeft90()

    display('P90 gogogo');
    display('Moving rotating left by 90');
    brick.MoveMotor('A', -20);
    brick.MoveMotor('B', 20);
    pause(1.4);
    brick.StopMotor('AB');
    pause(1);