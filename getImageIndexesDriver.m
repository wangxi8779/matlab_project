disp("Test getting index for 1 image");
imageIndexes = getImageIndexes(1);

disp("should return 1 image number");
disp("expected output");
disp(1);
disp("actual output");
disp(length(imageIndexes));

disp("image number should be between 1 to 9");
disp("expected output");
disp(true);
disp("actual output");
disp(imageIndexes(1) >= 1 && imageIndexes(1) <= 9);


disp("Test getting indexes for 4 images");
imageIndexes = getImageIndexes(4);

disp("should return 4 image numbers");
disp("expected output");
disp(4);
disp("actual output");
disp(length(imageIndexes));

disp("should return 2 unique image indexes");
disp("expected output");
disp(2);
disp("actual output");
disp(length(unique(imageIndexes)));

disp("the occurance of each image index should be 2");
disp("expected output");
disp(2);
disp("actual output");
disp(sum(imageIndexes(:) == imageIndexes(1)));

disp("Test getting indexes for 9 images");
imageIndexes = getImageIndexes(9);

disp("should return 9 image numbers");
disp("expected output");
disp(9);
disp("actual output");
disp(length(imageIndexes));

disp("should return 5 unique image indexes");
disp("expected output");
disp(5);
disp("actual output");
disp(length(unique(imageIndexes)));