BLA Sharp-Wave Ripple (1/18/18)

To change number of cells:
1) Change the numbers in the Excel sheet
2) Change the numbers in the Main.hoc file
3) Change NCELL in InternalConnections.hoc
4) Run MainModel.m to generate the connectivity matrices
   srun -N 1 -n 1 -c 1 --mem 4G matlab -nodesktop -nosplash -nodisplay -r "run('./MainModel.m');exit"

To change connectivity:
1) Change the first number in the respective cells on the InternalConns sheet of the Excel file
2) Run MainModel.m to generate the connectivity matrices

Once the connectivity and numbers of cells are defined, run the main.hoc file using the batch script provided. Some parameters may need to be changed based on the HPC system being used.
