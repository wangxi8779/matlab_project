disp("should return 1 if win");
disp("expected output");
disp("you win!");
disp(1);
disp("actual output");
disp(checkResult([2, 2, 3, 3], 2));

disp("should return -1 if lose");
disp("expected output");
disp("you lose!");
disp(-1);
disp("actual output");
disp(checkResult([1, 2], 2));

disp("expected output");
disp("come on, start over!");
disp(-1);
disp("actual output");
disp(checkResult([1, 2, 3], 3));

disp("expected output");
disp("fine, as long as you are happy");
disp(-1);
disp("actual output");
disp(checkResult([1, 2, 3, 4], 3));


disp("should return 0 if game on");
disp("expected output");
disp(0);
disp("actual output");
disp(checkResult([1, 1, 2], 2));
