function Matrix = Diagnol_Matrix(Size)
    Matrix=zeros(Size,Size);
    for k=1:Size
       Matrix(k,k)=1;
    end;
end