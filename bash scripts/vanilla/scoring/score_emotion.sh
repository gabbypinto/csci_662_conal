#!/bin/bash
#SBATCH --partition=medium
#SBATCH --account=medium
#SBATCH --cpus-per-gpu=2
#SBATCH --gpus=1
#SBATCH --mem=32G
#SBATCH --output=scores_emotion.out
#SBATCH --open-mode=truncate
#SBATCH --mail-user=gpinto@isi.edu
#SBATCH --mail-type=BEGIN,END,FAIL,REQUEUE,ALL

#emotion dataset
python3 -m scoring.score deberta emotion > output_score_emotion_deberta.txt
python3 -m scoring.score deberta_large emotion > output_score_emotion_deberta_large_2.txt
python3 -m scoring.score roberta-base emotion > output_score_emotion_roberta_base.txt
python3 -m scoring.score roberta_large emotion > output_score_emotion_roberta_large.txt
python3 -m scoring.score bert_large emotion > output_score_emotion_bert_large.txt
python3 -m scoring.score bert_base emotion > output_score_emotion_bert_base.txt




