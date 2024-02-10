# A simple batch file to call gforran and compile L_RANGE

del *.o
del *.mod

gfortran -c  Parm_Vars_and_Vals.f95
gfortran -c  Structures.f95
gfortran -c  State_Variables.f95
gfortran -c  Decomposition.f95
gfortran -c  Initialize_Model.f95
gfortran -c  Misc_Material.f95
gfortran -c  Outputs.f95
gfortran -c  Plant_Death.f95
gfortran -c  Plant_Populations.f95
gfortran -c  Productivity.f95
gfortran -c  Soil_and_Water.f95
gfortran -c  Weather.f95

gfortran -static-libgfortran -static-libgcc L_Range.f95 Decomposition.o Initialize_Model.o Misc_Material.o Outputs.o Parm_Vars_and_Vals.o Plant_Death.o Plant_Populations.o Productivity.o Soil_and_Water.o State_Variables.o Structures.o Weather.o -o F:\L_Range_NoEdits\L_Range_Bin\L_Range.exe

