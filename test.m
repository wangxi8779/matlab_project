disp("test selecting 2 images from the collection");
images = getImages(2);

disp("should return 4 image numbers");
disp("expected output");
disp(4);
disp("actual output");
disp(length(images));

disp("should return 2 unique image numbers");
disp("expected output");
disp(2);
disp("actual output");
disp(length(unique(images)));

disp("the occurance of each image should be 2");
disp("expected output");
disp(2);
disp("actual output");
disp(sum(images(:) == images(1)));
