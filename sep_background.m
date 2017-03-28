man = imread('girl.jpg');
man = rgb2gray(man);

for i = 1 : 360
    for j=1 : 640
        if((man(i,j) < man(247,170)) )
            man(i,j) = 255;
%              imshow(man); && (man(i,j) > man(246,350))
        end
%         if((man(i,j) < man(350,246))  )
%             man(i,j) = 255;
% %              imshow(man); && (man(i,j) > man(246,350))
%         end
        
    end
end
imshow(man)