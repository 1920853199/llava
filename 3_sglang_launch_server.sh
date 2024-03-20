export HF_ENDPOINT=https://hf-mirror.com
export CUDA_VISIBLE_DEVICES=0
nohup python -m sglang.launch_server --model-path liuhaotian/llava-v1.6-34b --tokenizer-path llava-hf/llava-v1.6-34b-hf --port 30000 >> 3_log_sglang_launch_server.txt 2>&1 &
