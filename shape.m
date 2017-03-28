function shape()
        i=imread('C1.png');
        a=rgb2gray(i);
        d=im2bw(a);
        L = bwlabel(d);
        all  = regionprops(L, 'ALL');        
        var_Values = [all.Area,all.Centroid ,all.MajorAxisLength ,all.MinorAxisLength,all.Eccentricity ,all.Orientation,all.ConvexArea, all.FilledArea, all.EquivDiameter, all.Solidity ,all.Extent, all.Perimeter];     
        xlswrite('DataInput.xlsx',var_Values,'Sheet2','A2:N2');
        
        i=imread('C2.png');
        a=rgb2gray(i);
        d=im2bw(a);
        L = bwlabel(d);
        all  = regionprops(L, 'ALL');        
        var_Values = [all.Area,all.Centroid ,all.MajorAxisLength ,all.MinorAxisLength,all.Eccentricity ,all.Orientation, all.ConvexArea, all.FilledArea, all.EquivDiameter, all.Solidity ,all.Extent, all.Perimeter];     
        xlswrite('DataInput.xlsx',var_Values,'Sheet2','A3:N3');
        
        i=imread('C3.png');
        a=rgb2gray(i);
        d=im2bw(a);
        L = bwlabel(d);
        all  = regionprops(L, 'ALL');        
        var_Values = [all.Area,all.Centroid ,all.MajorAxisLength ,all.MinorAxisLength,all.Eccentricity ,all.Orientation,all.ConvexArea, all.FilledArea, all.EquivDiameter, all.Solidity ,all.Extent, all.Perimeter];     
        xlswrite('DataInput.xlsx',var_Values,'Sheet2','A4:N4');
        
        i=imread('s1.png');
        a=rgb2gray(i);
        d=im2bw(a);
        L = bwlabel(d);
        all  = regionprops(L, 'ALL');        
        var_Values = [all.Area,all.Centroid ,all.MajorAxisLength ,all.MinorAxisLength,all.Eccentricity ,all.Orientation,all.ConvexArea, all.FilledArea, all.EquivDiameter, all.Solidity ,all.Extent, all.Perimeter];     
        xlswrite('DataInput.xlsx',var_Values,'Sheet2','A5:N5');
        
        i=imread('s3.png');
        a=rgb2gray(i);
        d=im2bw(a);
        L = bwlabel(d);
        all  = regionprops(L, 'ALL');        
        var_Values = [all.Area,all.Centroid ,all.MajorAxisLength ,all.MinorAxisLength,all.Eccentricity ,all.Orientation,all.ConvexArea, all.FilledArea, all.EquivDiameter, all.Solidity ,all.Extent, all.Perimeter];     
        xlswrite('DataInput.xlsx',var_Values,'Sheet2','A6:N6');
        
        i=imread('s4.png');
        a=rgb2gray(i);
        d=im2bw(a);
        L = bwlabel(d);
        all  = regionprops(L, 'ALL');        
        var_Values = [all.Area,all.Centroid ,all.MajorAxisLength ,all.MinorAxisLength,all.Eccentricity ,all.Orientation,all.ConvexArea, all.FilledArea, all.EquivDiameter, all.Solidity ,all.Extent, all.Perimeter];     
        xlswrite('DataInput.xlsx',var_Values,'Sheet2','A7:N7');

        i=imread('T1.png');
        a=rgb2gray(i);
        d=im2bw(a);
        L = bwlabel(d);
        all  = regionprops(L, 'ALL');        
        var_Values = [all.Area,all.Centroid ,all.MajorAxisLength ,all.MinorAxisLength,all.Eccentricity ,all.Orientation,all.ConvexArea, all.FilledArea, all.EquivDiameter, all.Solidity ,all.Extent, all.Perimeter];     
        xlswrite('DataInput.xlsx',var_Values,'Sheet2','A8:N8');
        
        i=imread('T2.png');
        a=rgb2gray(i);
        d=im2bw(a);
        L = bwlabel(d);
        all  = regionprops(L, 'ALL');        
        var_Values = [all.Area,all.Centroid ,all.MajorAxisLength ,all.MinorAxisLength,all.Eccentricity ,all.Orientation,all.ConvexArea, all.FilledArea, all.EquivDiameter, all.Solidity ,all.Extent, all.Perimeter];     
        xlswrite('DataInput.xlsx',var_Values,'Sheet2','A9:N9');
        
        i=imread('T7.png');
        a=rgb2gray(i);
        d=im2bw(a);
        L = bwlabel(d);
        all  = regionprops(L, 'ALL');        
        var_Values = [all.Area,all.Centroid ,all.MajorAxisLength ,all.MinorAxisLength,all.Eccentricity ,all.Orientation,all.ConvexArea, all.FilledArea, all.EquivDiameter, all.Solidity ,all.Extent, all.Perimeter];     
        xlswrite('DataInput.xlsx',var_Values,'Sheet2','A10:N10');
  %%  end
end