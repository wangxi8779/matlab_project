disp("Beat The Same Pokémon");

% get difficulty from user input
disp("1. Easy");
disp("2. Normal");
disp("3. Hard");
difficulty = input("Please choose difficulty (1-3): ");

% while input is not available
while difficulty < 1 || difficulty > 3
    difficulty = input("Please choose difficulty (1-3): ");
end

% get dimension based on difficulty
dimension = difficulty + 1;

slotsNumber = dimension * dimension;
% shuffle images
imageIndexes = getImageIndexes(slotsNumber);

% display images
figure;
for i = 1:slotsNumber
    subplot(dimension, dimension, i);
    path = sprintf("%d.png", imageIndexes(i));
    imshow(imread(path));
end

% wait for player to memorise the images
disp("Game is starting in");
for i = 1:5
    pause(1);
    fprintf("%d\n", 6 - i);
end

% display the images with placeholders
for i = 1:slotsNumber
    subplot(dimension, dimension, i);
    img = imshow(imread("0.png"));
    % add trigger for click event
    set(img,'ButtonDownFcn', {@flipCallback, imageIndexes(i), dimension});
end