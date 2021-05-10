export KMER=5
export MODEL_PATH=//home/mr/Workspace/Team8993/THESIS/DNABERT/Output/5/checkpoint-4000
export DATA_PATH=/home/mr/Workspace/Team8993/THESIS/DNABERT/Dataset/
export PREDICTION_PATH=/home/mr/Workspace/Team8993/THESIS/DNABERT/result/$KMER/$KMER/cp

python run_finetune.py \
    --model_type dna \
    --tokenizer_name=dna$KMER \
    --model_name_or_path $MODEL_PATH \
    --task_name rnaclass \
    --do_visualize \
    --visualize_data_dir $DATA_PATH \
    --data_dir $DATA_PATH \
    --max_seq_length 508 \
    --per_gpu_pred_batch_size=16   \
    --output_dir $MODEL_PATH \
    --predict_dir $PREDICTION_PATH \
    --n_process 48