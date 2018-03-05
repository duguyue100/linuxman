#!/bin/bash

# functions for cluster use

case "$fn" in
    # submit a job to the cluster
    "c.sb")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            sbatch "$firstParameter"
        else
            echo "Please specify a .job file to sbatch"
        fi
    ;;

    # list all the jobs submitted
    "c.ls.job")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            squeue -u $firstParameter
        else
            squeue -u yuhu,course04
        fi
    ;;

    # load modules
    "c.load")
        module load $allParameters 
    ;;

    # load cuda module
    "c.load.cuda")
        module load cuda
    ;;

    # load vesta module (for uzh cluster)
    "c.load.vesta")
        module load vesta cuda
    ;;

    # list available modules
    "c.avail")
        module avail
    ;;

    # activate the environment (for anaconda)
    "c.act")
        source activate $allParameters
    ;;

    # deactivate the environment (for anaconda)
    "c.deact")
        source deactivate
    ;;
esac
