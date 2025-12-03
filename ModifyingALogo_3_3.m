% Using a script to change the colors on the monster logo
logo = imread("Screenshot (3).jpg");
% Save the three layera of the array to three dimensional array
red = logo(:,:,1);
green = logo(:,:,2);
% Using subplot to show images
subplot(2,2,1)
imshow("Screenshot (3).jpg")
% Modify the logo
black = red<100 & green<100 & blue<100;
red(black) = 255;
green(black) = 200;
newlogo(:,:,1) = red;
newlogo(:,:,2) = green;
% Display the new img
subplot(2,2,2)
imshow(newlogo)
