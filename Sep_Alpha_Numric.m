file_open = fopen('sample.txt','r');
file_data = fread(file_open,'*char');
fclose(file_open);
string = cellstr(file_data);
check =  ~cellfun('isempty', regexp(string, '^[0-9]*$'));
num = (length(string));
alphabet = cell(length(string) ,1);
b = 1; c =1;
for a= 1:length(string)
    if check(a) == 1
        num(b) = str2double(string(a));
        b = b+1;
    elseif check(a)==0 && ~ismember(string(a),'')
        alphabet(c) = string(a);
        c = c+1;
    end
end
alphabet = alphabet(~cellfun('isempty',alphabet));
num = sort(num);
alphabet = sort(alphabet);

xlswrite('numbers',num );
xlswrite('alphabets',alphabet);