function MainModel()

s = RandStream('mcg16807', 'Seed', 97652);
RandStream.setGlobalStream(s)

ModelXLSFileName = '../Scripts_NEURON/model.xlsx';

PosSheetName = 'XYZ';
TypeSheetName = 'Types';
GroupSheetName = 'Groups';
InternalConnSheetName = 'InternalConns';

TypeFileName = '../Scripts_NEURON/Data_Types.txt';
TypeFile = TypeFileName;
GroupFileName = '../Scripts_NEURON/Data_Groups.txt';
GroupFile = GroupFileName;
CellFileName = '../Scripts_NEURON/Data_Cells.txt';
CellFile = CellFileName;

InternalConnSynFileName = '../Scripts_NEURON/Data_InternalSynConns.txt';
InternalConnSynFile = [InternalConnSynFileName];
InternalConnThrFileName = '../Scripts_NEURON/Data_InternalThrConns.txt';
InternalConnThrFile = [InternalConnThrFileName];
InternalConnDelFileName = '../Scripts_NEURON/Data_InternalDelConns.txt';
InternalConnDelFile = [InternalConnDelFileName];
InternalConnWgtFileName = '../Scripts_NEURON/Data_InternalWgtConns.txt';
InternalConnWgtFile = [InternalConnWgtFileName];

loc = Function_Pos(ModelXLSFileName, PosSheetName);
TypeStruct  = Function_Types(ModelXLSFileName,TypeSheetName, TypeFile);
GroupStruct = Function_Groups(ModelXLSFileName, GroupSheetName,GroupFile);
CellStruct = Function_Cells(GroupStruct,loc,CellFile); 

[InternalConnSynMatrix, InternalConnThrMatrix, InternalConnWgtMatrix,...
    InternalConnDelMatrix] = Function_InternalConns(ModelXLSFileName,...
    InternalConnSheetName,CellStruct,InternalConnSynFile,...
    InternalConnThrFile,InternalConnDelFile,InternalConnWgtFile);

save('Model.mat','loc','TypeStruct','GroupStruct','CellStruct');

end


