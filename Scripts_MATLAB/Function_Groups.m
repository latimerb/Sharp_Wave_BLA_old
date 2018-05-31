function GroupStruct = Function_Groups(ModelXLSFileName,GroupSheetName,GroupFile)

[~,~,raw] = xlsread(ModelXLSFileName,GroupSheetName);
FieldNames = raw(1,:);
RawDatas = raw(2:end,:);
GroupStruct = cell2struct(RawDatas, FieldNames, 2);

FileID = fopen(GroupFile,'w');
for CellGroupID = 0:length(GroupStruct)-1
    fprintf(FileID, '\t%d\t%s\t%d\n', GroupStruct(CellGroupID+1).ID,...
        GroupStruct(CellGroupID+1).Name,...
        GroupStruct(CellGroupID+1).CellNumber);
end
fclose(FileID);
end
