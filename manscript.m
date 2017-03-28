clc
clear all
man = imread('girl.jpg');
man = rgb2gray(man);

for i = 1 : 256
    for j=1 : 256
        if((man(i,j) > man(25,50)) )
            man(i,j) = 255;
        end
    end
end
imshow(man)