% given slots numbers, return the indexes of images
function indexes = getImageIndexes(slotsNumber)
    imagesNumber = round(slotsNumber / 2);
    % select 2 random numbers out of 9, e.g [4, 5]
    indexes = randperm(9, imagesNumber);
    % double the size of array, e.g [4, 5] => [4, 5, 4, 5]
    indexes = [indexes indexes];
    % shuffule the order of arrary
    indexes = indexes(randperm(slotsNumber));
end