#Setup: FEP dir structure 
include: 'ligand_fep_setup.smk' 
include: 'complex_fep_setup.smk' 
 
#RUN: FEP 
include: 'ligand_fep_simulation.smk' 
include: 'complex_fep_simulation_modified.smk' 

rule fep_results:
    input:
        tpr=expand(run_path+"/complex/fep/simulation/{state}/prod/prod.tpr",state=complex_windows),
