import os

root_path = os.path.dirname(__file__)

gmx_submit_kernels_path = root_path + "/gmx_submit_kernels"
complex_equil_template_path = root_path + "/complex_equil_workflow"
complex_fep_template_path = root_path + "/complex_fep_workflow"
ligand_equil_template_path = root_path + "/ligand_equil_workflow"
ligand_fep_template_path = root_path + "/ligand_fep_workflow"


cluster_config_template_path = root_path + "/cluster_configs"
default_slurm_config_path = (
    cluster_config_template_path + "/default_slurm_template.json"
)
