WANDB_PROJECT="nanot5-small-malaysian-cased-translation-v3" \
torchrun \
--nproc_per_node 4 \
-m run_t5_v2 \
--model_name_or_path mesolitica/nanot5-small-malaysian-cased \
--num_train_epochs 2 \
--eval_steps 1000000000 \
--logging_steps 2 \
--save_steps 1500 \
--save_total_limit 3 \
--do_train \
--train_file malaysian-translation \
--output_dir nanot5-small-malaysian-cased-translation-v3 \
--per_device_train_batch_size=12 \
--per_device_eval_batch_size=3 \
--gradient_accumulation_steps=2 \
--max_source_length 4096 \
--max_target_length 4096 \
--learning_rate 2e-4 \
--gradient_checkpointing true \
--bf16