function ouput =Sep_Alpha_Numric_2(filepath)

% do some validation
if isempty(filepath), 
    error(message('MATLAB:fileread:emptyFilename')); 
end

% open the file
[fid, msg] = fopen(filepath,'r');
if fid == (-1)
    error(message('MATLAB:fileread:cannotOpenFile', filepath, msg));
end

try
    % read file
    %Data = fread(fid,'*char')';
    %Other Way
    %textread
    %separate Number and Alphabets
    S = textscan(filepath,'%s');
    N = textscan(filepath,'%n');
    %SortedNum = Sort(N)

    %save output_string.out S
    %save output_number.out N
    SA = S.';
    NA = N.';
    fileIDS = fopen('String.txt','w');
    fprintf(fileIDS,'%s',SA{:});
    fclose(fileIDS);
    fileIDN = fopen('Number.txt','w');
    fprintf(fileIDN,'%g',NA{:});
    fclose(fileIDN);

catch exception
    % close file
    fclose(fid);
	throw(exception);
end

% close file
fclose(fid);

end