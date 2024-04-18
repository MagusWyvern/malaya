WANDB_PROJECT=mistral-474M \
~/.local/bin/torchrun --nproc_per_node 8 \
-m run_clm_mosaic \
--tokenizer_name malaysia-ai/bpe-tokenizer \
--model_name_or_path huseinzol05/dummy-mistral-474M \
--per_device_train_batch_size 24 \
--gradient_accumulation_steps 1 \
--output_dir pretrain-mistral-474M \
--bf16 \
--torch_dtype "bfloat16" \
--do_train \
--do_eval false \
--num_train_epochs 10 \
--train_file "/home/ubuntu/mosaic-dedup-text-dataset-filtered" \
--logging_steps 1 \
--learning_rate 2e-4 \
--weight_decay 1e-1 \
--block_size 4096 \
--save_steps 200 \
--save_total_limit 3 \
--warmup_steps 1000 \
--gradient_checkpointing true