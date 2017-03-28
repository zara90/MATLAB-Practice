function alphanum
% open task2.txt
% %fileID = fopen('task2.txt','r');
% % fprintf(fileID,'This is text file data',x);
% % fclose(fileID)

%str = '78°C 72°C 64°C 66°C 49°C';
% fileID = fopen('temperature.dat','w');
% fprintf(fileID,'%s',str);
% fclose(fileID);
% 
% fileID = fopen('task2.txt','r');
% digits= char(176);
% a=sprintf('%s   %f',digits)
% fclose(fileID)
% 
fid=fopen('sample.txt');
C = textscan(fid(1),' %d')
C=C{1}
a=[];
for j=1:length(C)
  if length(C{j})==1
      a=cat(1,a,str2num(C{j}));
  end
end
fclose(fid);

% x = fopen('task2.txt');
% s = num2str(x);
% numbers = sscanf(s,'%d')
% fclose(x);

end