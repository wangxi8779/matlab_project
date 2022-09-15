% hardcode the dimension for version 1
dimension = 2;
% the board is 2 x 2, so 4 image slots
slotsNumber = dimension * dimension;
% shuffle images
imageIndexes = getImages(2);

for i = 1:slotsNumber
    subplot(dimension, dimension, i);
    path = sprintf("%d.png", imageIndexes(i));
    imshow(imread(path));
end