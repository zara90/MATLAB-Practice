a=imread('pic2.jpg');
i=rgb2gray(a);
imhist(i);
figure,imagesc(double(i));
colormap('gray');
j=histeq(i);
figure; imhist(j,64);
