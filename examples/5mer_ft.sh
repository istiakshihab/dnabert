export KMER=5
export MODEL_PATH=../models/5-new-12w-0
export DATA_PATH=../Dataset/$KMER/start/
export OUTPUT_PATH=../Output/$KMER/start/

python run_finetune.py \
    --model_type dna \
    --tokenizer_name=dna$KMER \
    --model_name_or_path $MODEL_PATH \
    --task_name dnaprom \
    --do_train \
    --do_eval \
    --early_stop 3\
    --data_dir $DATA_PATH \
    --max_seq_length 508 \
    --per_gpu_eval_batch_size=8   \
    --per_gpu_train_batch_size=8   \
    --learning_rate 2e-4 \
    --num_train_epochs 12.0 \
    --output_dir $OUTPUT_PATH \
    --evaluate_during_training \
    --logging_steps 100 \
    --save_steps 4000 \
    --warmup_percent 0.1 \
    --hidden_dropout_prob 0.1 \
    --overwrite_output \
    --weight_decay 0.01 \
    --n_process 8