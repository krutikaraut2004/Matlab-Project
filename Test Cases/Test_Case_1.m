% Test Case 1:
% Read the input image
input_image = imread('Lion_King.jpg'); % Load the original image from the working directory

% Display the original image that was uploaded
figure;
imshow(input_image);
title('Original Uploaded Image');

% Convert the input image to grayscale for histogram equalization
grayscale_image = rgb2gray(input_image); % Convert to grayscale

% Use MATLAB's built-in histogram equalization function
equalized_image = histeq(grayscale_image);

% Display images and histograms side by side
figure;
% Adjust figure size for more space
set(gcf, 'Position', [100, 100, 1200, 600]); % Increase figure size

% Display Original Grayscale Image
subplot(2, 2, 1);
imshow(grayscale_image);
title('Original Grayscale Image', 'FontSize', 10);

% Display Histogram of the Original Grayscale Image using imhist
subplot(2, 2, 3);
imhist(grayscale_image); % Display Histogram of the Original Grayscale Image
title('Histogram of Original Grayscale Image', 'FontSize', 10);
xlabel('Intensity');
ylabel('Frequency');

% Display Histogram Equalized Image
subplot(2, 2, 2);
imshow(equalized_image);
title('Histogram Equalized Image', 'FontSize', 10);
% Display Histogram of the Equalized Image using imhist
subplot(2, 2, 4);
imhist(equalized_image); % Display Histogram of the Equalized Image
title('Histogram of Equalized Image', 'FontSize', 10);
xlabel('Intensity');
ylabel('Frequency');
