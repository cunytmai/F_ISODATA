function [final]=readfile(filename,req_columns)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% this function reads from text file and 
% store everything in one variable
% parameters: filename and dimension of vector
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid=fopen(filename);
a=fscanf(fid, '%f');
[actual_rows,actual_columns]=size(a); %actual_columns is always 1
fclose(fid);
row=1;
for i=1:req_columns:actual_rows
    for j=1:req_columns
        final(row,j)=a(i+j-1,1); 
    end
    row=row+1;
end
