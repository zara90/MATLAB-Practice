rgb = imread('nature.jpg');
redI = rgb(: , : , 1);
greenI = rgb(: , : , 2);
blueI = rgb(: , : , 3);

rd = imhist(redI);
display(rd);

gray = rgb2gray(rgb);
girl = imread('girl.jpg');
