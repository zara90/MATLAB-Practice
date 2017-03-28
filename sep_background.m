man = imread('per1.jpg');
man = rgb2gray(man);
%imshow(man);

for i = 1 : 550  %width
    for j=1 : 986 %height
        if(man(i,j) > 200 )
            man(i,j) = 255;
        end
    end
end

% man = imread('per3.jpg');
% man = rgb2gray(man);
% 
% for i = 1 : 360  %width
%     for j=1 : 640 %height
%         if(man(i,j) < 32 )
%             man(i,j) = 255;
%         end
%     end
% end
imshow(man)