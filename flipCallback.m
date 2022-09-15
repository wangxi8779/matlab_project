function flipCallback(~, ~, imageNumber, dimension)
    path = sprintf("%d.png", imageNumber);
    imshow(imread(path));
    set(gca,'tag',num2str(imageNumber));
    Flipped = [];
    for i = 1:(dimension*dimension)
        element = subplot(dimension, dimension, i);
        tag = get(element , 'tag');
        if tag ~= ""
            Flipped = [Flipped tag];
        end
    end
    checkResult(Flipped, dimension);
end