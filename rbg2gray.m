function rgb2gray
clc
clear all 
Im=imread('pic1.jpg');
imshow(Im);
title('Original Image');

jetA = colormap(figure,hot);
imshow(jetA);
title('Red (hot) Color Map');
imwrite(jetA,'red.jpg','jpg')

blue= colormap(figure,summer);
imshow(blue);
title('blue (Summer) Color Map');
imwrite(blue,'blue.jpg','jpg');

Red = Im(:,:,1);
Green = Im(:,:,2);
Blue = Im(:,:,3);
Image_gray = (Red + Green + Blue)/3;

imshow(Image_gray,'DisplayRange',[]), colorbar
title('Grayscale Image');
end 
