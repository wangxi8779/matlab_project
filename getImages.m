% select n out of 9 images, each image should have 2 copies
function images = getImages(n)
    % select 2 random numbers out of 9, e.g [4, 5]
    images = randperm(9, n);
    % double the array, e.g [4, 5, 4, 5]
    images = [images images];
    % shuffule the order of arrary
    index = randperm(n * 2);
    images = images(index);
end