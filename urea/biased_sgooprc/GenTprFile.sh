module load gromacs/2020.2-cpu

Topology=urea.top
Parameters=inputParameters.mdp
InitialGeo=melt450K-B.gro
Filename=urea
TprFile=${Filename}.tpr

gmx_mpi grompp \
       -f ${Parameters}    \
       -c ${InitialGeo}    \
       -p ${Topology}      \
       -o ${TprFile}
