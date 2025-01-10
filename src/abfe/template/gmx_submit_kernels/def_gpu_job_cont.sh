#!/bin/bash
# This is a base shell template file

export OMP_NUM_THREADS="${1}"
STEPNAME="${2}"
TOPOLOGY="${3}"
STRUCTURE="${4}"
CPT="${5}"

#opts
GROMACS_TPR="${STEPNAME}.tpr"
CONFOUT="${STEPNAME}.gro"

#Grompp this:
/appl/local/csc/soft/chem/gromacs/2024.3-gpu/bin/gmx_mpi gmx grompp -f ./${STEPNAME}.mdp -c ${STRUCTURE} -r ${STRUCTURE} -p ${TOPOLOGY} -t ${CPT} -o ${GROMACS_TPR} -maxwarn 3

# run gromacs command
#/appl/local/csc/soft/chem/gromacs/2024.3-gpu/bin/gmx_mpi mdrun -ntomp ${OMP_NUM_THREADS} -s $GROMACS_TPR -c $CONFOUT -deffnm ${STEPNAME}  -pme gpu -pmefft gpu -bonded gpu -nb gpu 
gmx mdrun -ntomp ${OMP_NUM_THREADS} -s $GROMACS_TPR -c $CONFOUT -deffnm ${STEPNAME}  -pme gpu -pmefft gpu -bonded gpu -nb gpu -ntmpi 1

exit 0
