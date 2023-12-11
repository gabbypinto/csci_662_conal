#!/bin/bash
#SBATCH --partition=medium
#SBATCH --account=medium
#SBATCH --cpus-per-gpu=2
#SBATCH --gpus=1
#SBATCH --mem=32G
#SBATCH --output=vanilla_rest_trec10.out
#SBATCH --open-mode=truncate
#SBATCH --mail-user=gpinto@isi.edu
#SBATCH --mail-type=BEGIN,END,FAIL,REQUEUE,ALL


# deberta, deberta_large, roberta-base, roberta_large, bert_large, bert


#### TRAINING
trained_dataset="trec10"
trained_model_name="deberta_large"

# ###split 0
# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging

# ##split 1

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging

# ##split 3

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging


##split 4

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging


# ##split 5

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging


# trained_model_name="roberta-base"
# # deberta, deberta_large, roberta-base, roberta_large, bert_large, bert

# ###split 0
# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging

# ##split 1

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging

# ##split 3

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging


# ##split 4

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging


# ##split 5

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging

# ##TODO AFTER HERE
# trained_model_name="roberta_large"
# # deberta, deberta_large, roberta-base, roberta_large, bert_large, bert

# ###split 0
# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
#     models/${trained_dataset}/0/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging

# ##split 1

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
#     models/${trained_dataset}/1/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging

# ##split 3

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging


# ##split 4

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging


# ##split 5

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging




trained_model_name="bert_large"
# deberta, deberta_large, roberta-base, roberta_large, bert_large, bert

###split 0
/nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
    models/${trained_dataset}/0/${trained_model_name}_seed_1 \
    --ood_training_type vanilla \
    --model_type ${trained_model_name} \
    --num_training_steps 5000 \
    --checkpoint_steps 100 \
    --seed 1 \
    --do_loss_logging


/nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
    models/${trained_dataset}/0/${trained_model_name}_seed_2 \
    --ood_training_type vanilla \
    --model_type ${trained_model_name} \
    --num_training_steps 5000 \
    --checkpoint_steps 100 \
    --seed 2 \
    --do_loss_logging

    /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
    models/${trained_dataset}/0/${trained_model_name}_seed_3 \
    --ood_training_type vanilla \
    --model_type ${trained_model_name} \
    --num_training_steps 5000 \
    --checkpoint_steps 100 \
    --seed 3 \
    --do_loss_logging

    /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
    models/${trained_dataset}/0/${trained_model_name}_seed_4 \
    --ood_training_type vanilla \
    --model_type ${trained_model_name} \
    --num_training_steps 5000 \
    --checkpoint_steps 100 \
    --seed 4 \
    --do_loss_logging

    /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/0/ \
    models/${trained_dataset}/0/${trained_model_name}_seed_5 \
    --ood_training_type vanilla \
    --model_type ${trained_model_name} \
    --num_training_steps 5000 \
    --checkpoint_steps 100 \
    --seed 5 \
    --do_loss_logging

##split 1

/nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
    models/${trained_dataset}/1/${trained_model_name}_seed_1 \
    --ood_training_type vanilla \
    --model_type ${trained_model_name} \
    --num_training_steps 5000 \
    --checkpoint_steps 100 \
    --seed 1 \
    --do_loss_logging


/nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
    models/${trained_dataset}/1/${trained_model_name}_seed_2 \
    --ood_training_type vanilla \
    --model_type ${trained_model_name} \
    --num_training_steps 5000 \
    --checkpoint_steps 100 \
    --seed 2 \
    --do_loss_logging

    /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
    models/${trained_dataset}/1/${trained_model_name}_seed_3 \
    --ood_training_type vanilla \
    --model_type ${trained_model_name} \
    --num_training_steps 5000 \
    --checkpoint_steps 100 \
    --seed 3 \
    --do_loss_logging

    /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
    models/${trained_dataset}/1/${trained_model_name}_seed_4 \
    --ood_training_type vanilla \
    --model_type ${trained_model_name} \
    --num_training_steps 5000 \
    --checkpoint_steps 100 \
    --seed 4 \
    --do_loss_logging

    /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/1/ \
    models/${trained_dataset}/1/${trained_model_name}_seed_5 \
    --ood_training_type vanilla \
    --model_type ${trained_model_name} \
    --num_training_steps 5000 \
    --checkpoint_steps 100 \
    --seed 5 \
    --do_loss_logging

# ##split 3

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/3/ \
#     models/${trained_dataset}/3/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging


# ##split 4

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/4/ \
#     models/${trained_dataset}/4/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging


# ##split 5

# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_1 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 1 \
#     --do_loss_logging


# /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_2 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 2 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_3 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 3 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_4 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 4 \
#     --do_loss_logging

#     /nas/home/gpinto/miniconda3/envs/conal_reprod/bin/python -m training.train_classifier data/${trained_dataset}/5/ \
#     models/${trained_dataset}/5/${trained_model_name}_seed_5 \
#     --ood_training_type vanilla \
#     --model_type ${trained_model_name} \
#     --num_training_steps 5000 \
#     --checkpoint_steps 100 \
#     --seed 5 \
#     --do_loss_logging

