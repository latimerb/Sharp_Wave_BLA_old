function TypeStruct = Function_Types(ModelXLSFileName, TypeSheetName, TypeFile)

[~,~,raw] = xlsread(ModelXLSFileName, TypeSheetName);

FieldNames = raw(1,:);
RawDatas = raw(2:end,:);
TypeStruct = cell2struct(RawDatas,FieldNames,2);

FileID = fopen(TypeFile, 'w');
for CellTypeID = 0:length(TypeStruct)-1
    fprintf(FileID,'\t%d\t%s\t%d\n', TypeStruct(CellTypeID+1).ID,...
        TypeStruct(CellTypeID+1).Name, TypeStruct(CellTypeID+1).CellNumber);
end
fclose(FileID);
end


