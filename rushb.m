display('P90 gogogo');
brick.MoveMotor('A', 10);
pause(1.7*3);
brick.StopMotor('AB');
pause(1);
while (1)
    while(brick.TouchPressed(1)==1 || brick.TouchPressed(2)==1)
        brick.MoveMotor('AB', 10);
        pause(0.5*5);
        brick.StopAllMotors();
        brick.MoveMotor('A', 10);
        pause(1.55*3);
        brick.StopMotor('AB');
        pause(1);
    end
    
    color = brick.ColorCode(3);
    if color == 5 % Green
        brick.MoveMotor('A', 20);
        pause(1);
        brick.StopMotor('A');
    elseif color == 2 % Blue
        brick.MoveMotor('B', 20);
        pause(1);
        brick.StopMotor('B');
    elseif color == 3 % Yellow
        brick.MoveMotor('AB', 20);
        pause(1);
        brick.StopMotor('AB');
    elseif color == 1 % Black
        brick.MoveMotor('AB', -20);
        pause(1);
        brick.StopMotor('AB');
    end
    
    brick.MoveMotor('AB', -10);
    pause(0.5*5);
    brick.StopAllMotors();
    
    % display(brick.UltrasonicDist(4))
    % brick.MoveMotor('AB', -100);
    % pause(0.5);
end
