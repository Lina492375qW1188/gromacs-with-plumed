#!/bin/bash
#SBATCH --job-name="argon"
#SBATCH -p RM
#SBATCH -t 00:30:00
#SBATCH -N 4
#SBATCH --ntasks-per-node 20

module load plumed
module load gcc
module load gromacs/2020.2-cpu

sh createTpr.sh
mpirun -np $SLURM_NPROCS gmx_mpi mdrun -v -deffnm md -plumed plumed.dat

