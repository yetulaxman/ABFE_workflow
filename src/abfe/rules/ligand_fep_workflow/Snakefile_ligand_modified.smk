#Setup: FEP dir structure 
include: 'ligand_fep_setup.smk' 
include: 'complex_fep_setup.smk' 
 
#RUN: FEP 
include: 'ligand_fep_simulation_modified.smk' 
include: 'complex_fep_simulation.smk' 

rule fep_results:
    input:
        tpr=expand(run_path+"/ligand/fep/simulation/{state}/prod/prod.tpr",state=complex_windows),
      #  gro=expand(run_path+"/ligand/fep/simulation/{state}/prod/temp.gro",state=complex_windows),
      #  xvg=expand(run_path+"/ligand/fep/simulation/{state}/prod/temp.xvg",state=complex_windows)
