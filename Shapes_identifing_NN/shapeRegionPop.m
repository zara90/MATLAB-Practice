clear all
clc
circle1 = imread('shapes/circle1.jpg');
c1=rgb2gray(circle1);
level1 = graythresh(c1);
BW1 = bwlabel(level1);
ans1 =  regionprops(BW1, 'ALL');
%% Excel Data Write
res = {'shape','Area','Centroid','MajorAxisLength','MinorAxisLength','Eccentricity','Orientation','ConvexArea','FilledArea','EulerNumber','EquivDiameter','Solidity','Extent','Perimeter','PerimeterOld';'c1', ans1.Area,ans1.Centroid,ans1.MajorAxisLength, ans1.MinorAxisLength ,ans1.Eccentricity ,ans1.Orientation,ans1.ConvexArea,ans1.FilledArea,ans1.EulerNumber,ans1.EquivDiameter,ans1.Solidity,ans1.Extent,ans1.Perimeter,ans1.PerimeterOld};
xlswrite('NN_Shapes.xls' ,res)

