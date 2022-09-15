function flipCallback(~, ~, imageNumber, dimension)    
    path = sprintf("%d.png", imageNumber);
    imshow(imread(path));
    set(gca,'tag',num2str(imageNumber));
    Flipped = [];
    for i = 1:(dimension*dimension)
        h=subplot(dimension, dimension, i);
        tag = get(h, 'tag');
        if tag ~= ""
            Flipped = [Flipped tag];
        end
    end
    checkResult(Flipped, dimension);
end