function win = checkResult(Flipped, dimension)
    Unpaired = [];
    win = 0;

    % if win return 1
    if length(Flipped) == (dimension * dimension)
        disp("you win!");
        win = 1;
        pause(2);
        close all;
        return;
    end

    % add single image number to an Array
    for element = Flipped
        if sum(Flipped==element) == 1
            Unpaired = [Unpaired element];
        end
    end

    % if lose return -1
    if length(Unpaired) >= 2
        disp("you lose!");
        win = -1;
        pause(2);
        close all;
        return;
    end
end