format long
%% Read Image
i=imread('t2.bmp');
imshow(i);
%% Convert RGB image into Gray
a=rgb2gray(i);

bw=edge(a,'canny');
imshow(bw);
%bw = bwareaopen(bw,30);
%se = strel('disk',2);
%bw = imclose(bw,se);
%bw = imfill(bw,'holes');
%imshow(bw);
L = bwlabel(bw);

%% Parameter
s  = regionprops(L, 'centroid');
dt  = regionprops(L, 'area');
cv = regionprops(L, 'perimeter');
dim = size(s)
BW_filled = imfill(bw,'holes');
boundaries = bwboundaries(BW_filled);
imshow(bw);
figure;imshow(i);
hold on;
for k=1:dim(1)
    b= boundaries{k};
    dim = size(b)
    for i=1:dim(1)
        khoangcach{k}(1,i) = sqrt ( ( b(i,2) - s(k).Centroid(1) )^2 + ( b(i,1) - s(k).Centroid(2) )^2 )
    end 
    a=max(khoangcach{k});
    b=min(khoangcach{k});
    c=dt(k).Area;
    dolech=a-b;
    vuong = c/(4*b^2)
    chunhat=c/(4*b*(a^2-b^2)^0.5);
    tamgiacdeu=(c*3^0.5)/((a+b)^2);
    elip =c/(a*b*pi);
    thoi= (c*( a^2 - b^2 )^0.5) / (2*a^2*b)
    if dolech < 10
            text(s(k).Centroid(1)-20,s(k).Centroid(2),'circle')
    elseif (vuong < 1.05 ) & (vuong > 0.95 )
            text(s(k).Centroid(1)-20,s(k).Centroid(2),'square')
    elseif (elip < 1.05 ) & (elip > 0.95 )
            text(s(k).Centroid(1)-20,s(k).Centroid(2),'ellipse')
    elseif (thoi < 1.05 ) & (thoi > 0.95 )
            text(s(k).Centroid(1)-20,s(k).Centroid(2),'diamond')
    elseif ((chunhat <1.05) & (chunhat >0.95))
            text(s(k).Centroid(1)-20,s(k).Centroid(2),'rectangle')
    elseif  (tamgiacdeu < 1.05 ) & (tamgiacdeu > 0.95 )
            text(s(k).Centroid(1)-20,s(k).Centroid(2),'triangle')
    else
        text(s(k).Centroid(1)-20,s(k).Centroid(2),'unknown')
    end
end