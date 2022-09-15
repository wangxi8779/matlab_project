function flipCallback(~, ~, imageNumber, dimension)
    % get image path
    path = sprintf("%d.png", imageNumber);
    % display image
    imshow(imread(path));
    % save the image number by adding a tag to the image element
    set(gca, 'tag', num2str(imageNumber));

    % loop all subplots to get flipped images
    Flipped = [];
    for i = 1:(dimension * dimension)
        element = subplot(dimension, dimension, i);
        tag = get(element , 'tag');
        if tag ~= ""
            Flipped = [Flipped tag];
        end
    end

    %check result and print out
    checkResult(Flipped, dimension);
end