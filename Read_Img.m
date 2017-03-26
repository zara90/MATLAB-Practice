
%% Read Image
Im = imread('pic1.jpg');

%%Show Color Image with colorbar
imshow(Im,'DisplayRange',[]), colorbar

%% Convert Into Gray Image
Red = Im(:,:,1);
Green = Im(:,:,2);
Blue = Im(:,:,3);
Image_gray = (Red + Green + Blue)/3;

%%Show Grey Image with colorbar
imshow(Image_gray,'DisplayRange',[]), colorbar


%% Any 2 color Map
figure
ax1 = subplot(2,1,1);
surf(peaks)
colormap(ax1,spring)

ax2 = subplot(2,1,2);
surf(peaks)
colormap(ax2,winter)

%% OR

load flujet
image(Image_gray)
colormap(winter)
load flujet
image(Image_gray)
colormap(Summer)

load flujet
image(Im)
colormap(Summer)
load flujet
image(Im)
colormap(winter)

%% Write Image

imwrite(Image_gray, 'Image_gray.tif');