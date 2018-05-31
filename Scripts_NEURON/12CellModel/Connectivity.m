close all; clear all;

Syn_Matrix= randi([0 1],12, 12);

FileID = fopen('Syn_MatrixFile','wt');
for i = 1:size(Syn_Matrix,1)                  
        for j = 1:size(Syn_Matrix,2)
                fprintf(FileID,'\t%f',Syn_Matrix(i,j));
        end
        fprintf(FileID,'\n');           
end
fclose(FileID);