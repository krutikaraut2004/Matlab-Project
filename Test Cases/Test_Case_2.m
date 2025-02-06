% Test Case 2:
% Read the input image
input_image = imread('Lion_King.jpg'); % Load the original image from the working directory

% Convert the input image to grayscale for further processing
grayscale_image = rgb2gray(input_image); % Convert to grayscale

% Apply various filters and effects
% 1. Gaussian Blur
gaussian_filtered_image = imgaussfilt(grayscale_image, 2); % Gaussian filtering with sigma = 2

% 2. Image Sharpening
sharpened_image = imsharpen(grayscale_image); % Apply sharpening filter

% 3. Edge Detection (Sobel)
edges_sobel = edge(grayscale_image, 'sobel'); % Sobel edge detection

% 4. Median Filter (to reduce noise)
median_filtered_image = medfilt2(grayscale_image, [3 3]); % 3x3 median filtering

% 5. Laplace Filtering (Edge Enhancement)
laplacian_filtered_image = imfilter(grayscale_image, fspecial('laplacian', 0.2)); % Apply Laplace filter

% 6. Motion Blur
motion_filter = fspecial('motion', 20, 45); % Create a motion blur filter
motion_blurred_image = imfilter(grayscale_image, motion_filter, 'replicate');

% 7. Emboss Effect
emboss_filter = [ -2 -1 0; -1 1 1; 0 1 2 ]; % Emboss filter kernel
embossed_image = imfilter(grayscale_image, emboss_filter);

% 8. Prewitt Edge Detection
edges_prewitt = edge(grayscale_image, 'prewitt'); % Prewitt edge detection

% 9. Unsharp Masking (Another sharpening technique)
unsharp_image = imsharpen(grayscale_image, 'Radius', 2, 'Amount', 1);


% 10. Adaptive Histogram Equalization
adapt_histeq_image = adapthisteq(grayscale_image, 'ClipLimit', 0.02); % Adaptive histogram equalization

% Adjust the font size, figure size, and subplot positions
figure;
% Adjust figure size for more space
set(gcf, 'Position', [100, 100, 1600, 900]); % Increase figure size to fit more images

% Display Gaussian Blurred Image
subplot(2, 5, 1);
imshow(gaussian_filtered_image);
title('Gaussian Blurred', 'FontSize', 8);

% Display Sharpened Image
subplot(2, 5, 2);
imshow(sharpened_image);
title('Sharpened Image', 'FontSize', 8);

% Display Sobel Edge Detection
subplot(2, 5, 3);
imshow(edges_sobel);
title('Sobel Edge Detection', 'FontSize', 8);

% Display Median Filtered Image
subplot(2, 5, 4);
imshow(median_filtered_image);
title('Median Filtered', 'FontSize', 8);

% Display Motion Blurred Image
subplot(2, 5, 6);
imshow(motion_blurred_image);
title('Motion Blur', 'FontSize', 8);

% Display Embossed Image
subplot(2, 5, 7);
imshow(embossed_image);
title('Embossed Effect', 'FontSize', 8);

% Display Unsharp Masking
subplot(2, 5, 8);
imshow(unsharp_image);
title('Unsharp Masking', 'FontSize', 8);

% Display Adaptive Histogram Equalization Image
subplot(2, 5, 9);
imshow(adapt_histeq_image);
title('Adapt Hist. Equalization', 'FontSize', 8);
