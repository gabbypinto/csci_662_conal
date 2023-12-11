#!/bin/bash
#SBATCH --partition=medium
#SBATCH --account=medium
#SBATCH --cpus-per-gpu=2
#SBATCH --gpus=1
#SBATCH --mem=32G
#SBATCH --output=scores_agnews.out
#SBATCH --open-mode=truncate
#SBATCH --mail-user=gpinto@isi.edu
#SBATCH --mail-type=BEGIN,END,FAIL,REQUEUE,ALL


#agnews dataset
python3 -m scoring.score deberta agnews > output_score_agnews_deberta.txt
python3 -m scoring.score deberta_large agnews > output_score_agnews_deberta_large.txt
python3 -m scoring.score roberta-base agnews > output_score_agnews_roberta_base.txt
python3 -m scoring.score roberta_large agnews > output_score_agnews_roberta_large.txt
python3 -m scoring.score bert_large agnews > output_score_agnews_bert_large.txt
python3 -m scoring.score bert_base agnews > output_score_agnews_bert_base.txt




