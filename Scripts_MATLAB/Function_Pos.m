function loc = Function_Pos(ModelXLSFileName, PosSheetName)

[~,~,raw] = xlsread(ModelXLSFileName, PosSheetName);
Dimension = raw(2:end, 2:end);
X = cell2mat(Dimension(1,1));
Y = cell2mat(Dimension(1,2));
Z = cell2mat(Dimension(1,3));
interval_P = cell2mat(Dimension(1,4));

n = 1;
loc = [10000,3];
for z = interval_P:interval_P:Z;
    for y = interval_P:interval_P:Y;
        for x = interval_P:interval_P:X;
            loc(n,1) = x;
            loc(n,2) = y;
            loc(n,3) = z;
            n = n+1;
            
        end
    end
end

end
