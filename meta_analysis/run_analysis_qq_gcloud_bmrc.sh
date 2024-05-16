#!/usr/bin/env bash
#SBATCH --job-name=analysis-qq
#SBATCH --output=/well/lindgren/dpalmer/logs/%x_%j.log
#SBATCH --error=/well/lindgren/dpalmer/logs/%x_%j.err

FILE_GENE=$1
OUT=$2

echo "Rscript analysis_qq.r --analysis_results_file $FILE_GENE --include_gene_names --out $OUT"
Rscript analysis_qq.r --analysis_results_file $FILE_GENE --include_gene_names --out $OUT