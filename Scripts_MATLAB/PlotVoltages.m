%directory should be a string containing a file with the data in a column
    %e.g. '../Data_Output/Voltage/'
%CellIDs should be a 1 x n matrix.
function PlotVoltages(cellIDs, directory)
    figure
    for i=1:length(cellIDs)
        subplot(length(cellIDs),1,i)
        file = sprintf('%sVoltage_%i',directory,cellIDs(i))
        V = load(file);
        plot(V(:,1))
        label = sprintf('cell %i',cellIDs(i));
        ylabel(label);
        clear V
    end
end

