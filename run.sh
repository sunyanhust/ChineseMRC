source activate torch
export CUDA_VISIBLE_DEVICES=0
python run.py --data_dir /data/bzw/MRC/data/lic2020/dureader_robust-data \
    --model_name_or_path  /data/package/albert_chinese_large \
    --output_dir albert_models \
    --model_type albert \
    --train_file train.json \
    --predict_file dev.json \
    --do_eval \
    --overwrite_output_dir \
    --max_seq_length 256 \
    --per_gpu_eval_batch_size 32 \
    --per_gpu_train_batch_size 8 \
    --do_train \
    --learning_rate 5e-5\
    --num_train_epochs 3
#    --evaluate_during_training \
    
