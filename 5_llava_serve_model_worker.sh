export HF_ENDPOINT=https://hf-mirror.com
nohup python -m llava.serve.model_worker --host 0.0.0.0 --controller http://localhost:10000 --port 40000 --worker http://localhost:40000 --model-path /mnt/workspace/llava/models/AI-ModelScope/llava-v1___6-34b >> 5_log_llava_serve_model_worker.txt 2>&1 &
