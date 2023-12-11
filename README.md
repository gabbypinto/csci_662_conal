# csci_662_conal

This repository contains the code used to reproduce the main results from Contrastive Novelty-Augmented Learning: Anticipating Outliers with Large Language Models (CoNAL) 

Original Paper: [link](https://arxiv.org/pdf/2211.15718.pdf)

## Running additional experiments on novel set choices
When invoking `ood_generation.generate_np`, set `num_context_per_class` to the number of in-context examples per class to put in the prompt for the example generator. Specifically, for *one-shot*, set `--num_context_per_class -1`; for *1-per-class*, set `--num_context_per_class 1` or use default setting; for *3-per-class*, set `--num_context_per_class 3`.
