function histogram_equa

clear all 
clc
a=imread('pic1.jpg');
i=rgb2gray(a);
imhist(i);
figure,imagesc(double(i));
colormap('winter');
j=histeq(i);
figure; imhist(j,64);
end