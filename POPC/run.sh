#!/bin/sh

# tleap
rm leap.log
tleap -f PPC.tleap

# acpype
~/Software/acpype/acpype.py -d -p PPC.prmtop -x PPC.inpcrd -r
rm *.mdp

# AMBER 
sander -O -c PPC.inpcrd -p PPC.prmtop

# GROMACS
grompp_d -p PPC_GMX.top -c POPC.pdb
mdrun 

# Cleaning
sed 's/ PPC/POPC/g' PPC_GMX.top > POPC.itp
