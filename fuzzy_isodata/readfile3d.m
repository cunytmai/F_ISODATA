function [X,Y,Z]=readfile3d(filename)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% this function reads from text file and 
% store everything in 2 variable
% parameters: filename 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid=fopen(filename);
a=fscanf(fid, '%f');
[actual_rows,actual_columns]=size(a); %actual_columns is always 1
fclose(fid);
row=1;
for i=1:3:actual_rows
    X(row,1)=a(i,1);
    Y(row,1)=a(i+1,1);
    Z(row,1)=a(i+2,1);
    row=row+1;
end