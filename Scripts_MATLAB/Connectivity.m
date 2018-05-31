close all;clc;

Num_PCELL = 854; %1707;
Num_PVCELL = 96; %192;
Num_CHNCELL = 10; %21;
Num_SOMCELL = 107; %214;

NCELL = Num_PCELL + Num_PVCELL + Num_CHNCELL + Num_SOMCELL;

Syn_Matrix = zeros(NCELL, NCELL);

for i = 1:Num_PCELL;
    for j = Num_PCELL:Num_PCELL + Num_PVCELL;
        if unifrnd(0,100) <= 28
            Syn_Matrix(i,j) = 1;
        end
    end
end

for i = 1:Num_PCELL;
    for j = Num_PCELL + Num_PVCELL + Num_CHNCELL: Num_PCELL + Num_PVCELL + Num_CHNCELL + Num_SOMCELL;
        if unifrnd(0,100) <= 28
            Syn_Matrix(i,j) = 1;
        end
    end
end

for i = Num_PCELL:Num_PCELL + Num_PVCELL;
    for j = 1: Num_PCELL;
        if unifrnd(0,100) <= 34
            Syn_Matrix(i,j) = 1;
        end
    end
end

for i = Num_PCELL + Num_PVCELL:Num_PCELL + Num_PVCELL + Num_CHNCELL;
    for j = 1: Num_PCELL;
        if unifrnd(0,100) <= 10
            Syn_Matrix(i,j) = 1;
        end
    end
end

for i = Num_PCELL + Num_PVCELL + Num_CHNCELL:Num_PCELL + Num_PVCELL + Num_CHNCELL + Num_SOMCELL;
    for j = 1: Num_PCELL;
        if unifrnd(0,100) <= 34
            Syn_Matrix(i,j) = 1;
        end
    end
end

for i = Num_PCELL:Num_PCELL + Num_PVCELL;
    for j = Num_PCELL + Num_PVCELL: Num_PCELL + Num_PVCELL + Num_CHNCELL;
        if unifrnd(0,100) <= 10
            Syn_Matrix(i,j) = 1;
        end
    end
end

FileID = fopen('Syn_Matrix.txt', 'w');
matrix  = Syn_Matrix;
[m,n] = size(matrix);
for i = 1:1:m;
    for j = 1:1:n;
        if j==n
            fprintf(FileID, '%g\n', matrix(i,j));
        else
            fprintf(FileID, '%g\t', matrix(i,j));
        end
    end
end
fclose(FileID);

