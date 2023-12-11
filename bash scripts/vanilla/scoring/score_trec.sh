#!/bin/bash
#SBATCH --partition=medium
#SBATCH --account=medium
#SBATCH --cpus-per-gpu=2
#SBATCH --gpus=1
#SBATCH --mem=32G
#SBATCH --output=scores_trec.out
#SBATCH --open-mode=truncate
#SBATCH --mail-user=gpinto@isi.edu
#SBATCH --mail-type=BEGIN,END,FAIL,REQUEUE,ALL


#trec10 dataset
python3 -m scoring.score deberta trec10 > output_score_trec10_deberta.txt
python3 -m scoring.score deberta_large trec10 > output_score_trec10_deberta_large.txt
python3 -m scoring.score roberta-base trec10 > output_score_trec10_roberta_base.txt
python3 -m scoring.score roberta_large trec10 > output_score_trec10_roberta_large.txt
python3 -m scoring.score bert_large trec10 > output_score_trec10_bert_large.txt
python3 -m scoring.score bert_base trec10 > output_score_trec10_bert_base.txt
