#!/bin/bash
module load R/3.3.3.intel
Rscript process_top_snps.categorical.R /oak/stanford/groups/euan/projects/ukbb/gwas/accelerometry_plink/v2/results/$1
