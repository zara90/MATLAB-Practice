function outputstruct = C_to_F_Converter()
connect=datastream('http://www.google.com/ig/api?weather=');
data=fetch(connect,1);
end