#!/bin/bash
#SBATCH --job-name="aladip"
#SBATCH -p RM-shared
#SBATCH -t 00:30:00
#SBATCH -N 1
#SBATCH --ntasks-per-node 1
#SBATCH --mem-per-cpu=256

module load plumed
module load gcc
module load gromacs/2020.2-cpu

sh createTpr.sh
mpirun -np 1 gmx_mpi mdrun -ntomp 8 -deffnm aladip -plumed plumed_metaD.dat
