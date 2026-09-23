#!/bin/bash

# Activate the Emboss conda environment
module load anaconda3/2024.06
source activate /courses/BIOL2406.202710/shared/emboss_env

# Run command to translate
transeq JH_DNA_names JH_AA_names
 
# Read the contents of the output file
cat JH_AA_names

# Deactivate the conda environment
conda deactivate

