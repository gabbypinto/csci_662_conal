#!/usr/bin/bash
DATASETS=("agnews" "emotion" "trec10")
SEEDS=(1 2 3 4 5)

for i in "${DATASETS[@]}"
do 
	if [ $i = "agnews" ]
	then
		SPLITS=(0 1 2 3)
	elif [ $i = "emotion" ]
	then
		SPLITS=(0 1 3 4)
	elif [ $i = "trec10" ]
	then
		SPLITS=(0 1 3 4 5)
	else 
		echo "dataset not found"
	fi
	for j in "${SPLITS[@]}"
	do
		for k in "${SEEDS[@]}"
		do 
			python3 -m ood_generation.generate_np   --dataset $i   --gold_ood_class $j   --num_generations 100000   --generation_batch_size 16   --example_generator_size large         --label_generator_size large   --output_dir_name test   --do_moby   --seed $k
			python3 -m training.train_classifier  "data/$i/$j/"  "models/$i/$j/bert_ccl_seed_$k/"  --ood_training_type ccl  --ood_path "generations/$i/$j/test"  --model_type bert_base  --num_training_steps 5000  --checkpoint_steps 100  --seed $k  --retrain_if_exists
		done
	done
done

for i in "${DATASETS[@]}"
do 
	python3 -m scoring.score bert_ccl $i --num_trials 5
done


