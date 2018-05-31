function CellStruct = Function_Cells(GroupStruct,loc, CellFile)

CellStruct = struct([]);
CellID = 0;

for i = 1:length(GroupStruct)
    CellNumberArray = GroupStruct(i).CellNumber();
    if (i==1)
        INDFlag = zeros(size(loc,1),1);
    end
    for k = 1:size(CellNumberArray,2)
        GroupID = GroupStruct(i).ID;
        CellNumber = CellNumberArray(1,k);
        AvailableIND = find(INDFlag==0);
        NumAllPositions = size(AvailableIND,1);
        temp = randperm(NumAllPositions);
        temp = temp(1:CellNumber);
        IND(:,1) = AvailableIND(temp,1);
        Pos = loc(IND,:);
        INDFlag(IND,1) = 1;
        for j = 1:CellNumber
            CellStruct(CellID+1).ID =CellID;
            CellStruct(CellID+1).GroupID = GroupID;
            CellStruct(CellID+1).XPos = Pos(j,1);
            CellStruct(CellID+1).YPos = Pos(j,2);
            CellStruct(CellID+1).ZPos = Pos(j,3);
            CellID = CellID+1;
        end
        clear temp IND Pos
    end
end

FileID = fopen(CellFile,'w');
for CellID = 0:length(CellStruct)-1
    fprintf(FileID, '\t%d\t%d\t%f\t%f\t%f\n', CellStruct(CellID+1).ID,...
        CellStruct(CellID+1).GroupID,CellStruct(CellID+1).XPos,...
        CellStruct(CellID+1).YPos,CellStruct(CellID+1).ZPos);
end
fclose(FileID);

end

        
    
