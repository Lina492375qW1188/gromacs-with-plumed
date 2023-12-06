Topology=ala3.amber99sb-tip3p.top
Parameters=aladip.mdp
InitialGeo=Ala3V.initial-2.gro
Filename=Ala3V
TprFile=${Filename}.tpr

gmx_mpi_d grompp \
       -f ${Parameters}    \
       -c ${InitialGeo}    \
       -p ${Topology}      \
       -o ${TprFile}       \
       -maxwarn 20         
