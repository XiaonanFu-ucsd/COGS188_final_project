set -x 

read -r -d '' training_commands <<EOF
./train_dpo.py \
     --save_path ./ckpt/train1 \
     --save_steps 200 \
     --logging_steps 1 \
     --eval_steps -1 \
     --train_batch_size 128 \
     --micro_train_batch_size 16 \
     --pretrain MBZUAI/LaMini-GPT-124M \
     --bf16 \
     --max_epochs 1 \
     --max_len 1024 \
     --zero_stage 2 \
     --beta 0.1 \
     --learning_rate 1e-5 \
     --dataset Anthropic/hh-rlhf \
     --dataset_probs 1.0 \
     --flash_attn \
     --gradient_checkpointing \
     --ref_offload \
     --lora_rank 64 \
     --use_wandb [WANDB_TOKENS] \
     --wandb_project cogs188-final \
     --wandb_run_name train1

EOF
     # --wandb [WANDB_TOKENS] or True (use wandb login command)
     # --ipo [for IPO]
     # --label_smoothing 0.1 [for cDPO]

     # --dataset Anthropic/hh-rlhf \
     # --max_samples 128 \


if [[ ${1} != "slurm" ]]; then
    deepspeed $training_commands
fi
