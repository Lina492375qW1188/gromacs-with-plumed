# Gromacs patched with PLUMED

In each simulation folder, there is either a `GenTpr.sh` or `CreateTpr.sh` file example. These files are used to generate `*.tpr`.

They typically look like the following:
```
gmx_mpi grompp                   \
        -f [filename_mdp].mdp    \
        -c [filename_gro].gro    \
        -p [filename_top].top    \
        -o [filename_tpr].tpr
```

Once the tpr file is generated, command, e.g. `gmx_mpi mdrun -v -deffnm [filename_tpr].tpr -plumed plumed.dat` to run the simulation.
