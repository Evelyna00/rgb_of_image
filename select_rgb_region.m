% select_rgb_region.m
% This script allows a user to select a portion of an image and computes the average RGB value.

% Step 1: Read the image
[filename, pathname] = uigetfile({'*.jpg;*.png;*.bmp;*.tif','Image Files (*.jpg, *.png, *.bmp, *.tif)'}, 'Select an Image');
if isequal(filename, 0)
    disp('No image selected. Exiting...');
    return;
end

img = imread(fullfile(pathname, filename));
figure, imshow(img), title('Select a region using the mouse');

% Step 2: Let user draw a rectangle
h = imrect;
position = wait(h);  % [xmin ymin width height]

% Convert position to integer indices
xmin = round(position(1));
ymin = round(position(2));
width = round(position(3));
height = round(position(4));

% Clip values to image boundaries
xmin = max(xmin, 1);
ymin = max(ymin, 1);
xmax = min(xmin + width - 1, size(img, 2));
ymax = min(ymin + height - 1, size(img, 1));

% Step 3: Extract the selected region
selected_region = img(ymin:ymax, xmin:xmax, :);

% Step 4: Compute average RGB values
R = mean(mean(selected_region(:,:,1)));
G = mean(mean(selected_region(:,:,2)));
B = mean(mean(selected_region(:,:,3)));

% Step 5: Display results
fprintf('Average RGB values of selected region:\n');
fprintf('Red: %.2f\n', R);
fprintf('Green: %.2f\n', G);
fprintf('Blue: %.2f\n', B);
