1. Run `sh creatTpr.sh` to generate `aladip.tpr` file.
2. Run `gmx_mpi mdrun -ntomp 8 -deffnm aladip -plumed plumed.dat`.

Ideally, gromacs will produce at least the following files:
```
aladip.edr
aladip.log
aladip.trr
```
