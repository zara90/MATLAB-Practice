function shape_nn()
   %% for c = 1:6
        i=imread('s3.jpg');
        a=rgb2gray(i);
        d=im2bw(a);
        L = bwlabel(d);
        all  = regionprops(L, 'ALL');
        xlswrite('DataInput.xlsx',all.Area,'Sheet2','A11');
        xlswrite('DataInput.xlsx',all.Centroid,'Sheet2','B11');
        xlswrite('DataInput.xlsx',all.MajorAxisLength,'Sheet2','C11');
        xlswrite('DataInput.xlsx',all.MinorAxisLength,'Sheet2','D11');
        xlswrite('DataInput.xlsx',all.Eccentricity,'Sheet2','E11');
        xlswrite('DataInput.xlsx',all.Orientation ,'Sheet2','F11');
        xlswrite('DataInput.xlsx',all.ConvexArea,'Sheet2','G11');
        xlswrite('DataInput.xlsx',all.FilledArea,'Sheet2','H11');        
        xlswrite('DataInput.xlsx',all.EulerNumber,'Sheet2','I11');
        xlswrite('DataInput.xlsx',all.EquivDiameter,'Sheet2','J11');
        xlswrite('DataInput.xlsx',all.Solidity ,'Sheet2','K11');
        xlswrite('DataInput.xlsx',all.Extent,'Sheet2','L11');
        xlswrite('DataInput.xlsx',all.Perimeter,'Sheet2','M11');       
        xlswrite('DataInput.xlsx',all.PerimeterOld,'Sheet2','N11');
        %t = struct2table(all,'AsArray',true)
        %writetable(t, 'DataInput.xlsx','Sheet',1,'Range','A2:Z3');

  %%  end
end