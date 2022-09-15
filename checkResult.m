function win = checkResult(Flipped, dimension)
    Unpaired = [];
    win = 0;
    if length(Flipped) == (dimension * dimension)
        disp("you win!");
        win = 1;
        pause(2);
        close all;
        return;
    end
    for element = Flipped
        if sum(Flipped==element) == 1   
            Unpaired = [Unpaired element];
        end
    end

    if length(Unpaired) == 2
        disp("you lose!");
        win = -1;
    elseif length(Unpaired) == 3
        disp("come on, start over!");
        win = -1;
    elseif length(Unpaired) == 4
        disp("fine, as long as you are happy");
        win = -1;
    elseif length(Unpaired) > 4
        disp("try harder");
        win = -1;
    end
end