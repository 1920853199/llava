## 第一步：
```
git clone https://github.com/haotian-liu/LLaVA.git
cd LLaVA
```
## 第二步：
```
conda create -n llava python=3.10
conda activate llava
pip install -e .
```
## 第三步：
```
nohup python -m llava.serve.controller --host 0.0.0.0 --port 10000 >> 1_log_controller.txt 2>&1 &
```
## 第四步：
```
nohup python -m llava.serve.gradio_web_server --controller http://localhost:10000 --model-list-mode reload  >> 2_log_gradio_web_server.txt 2>&1 &
```
## 第五步：
### 方式一：
```
# 第一步：
nohup CUDA_VISIBLE_DEVICES=0 python -m sglang.launch_server --model-path liuhaotian/llava-v1.6-34b --tokenizer-path llava-hf/llava-v1.6-34b-hf --port 30000 >> 3_1_1_log_sglang_launch_server.txt 2>&1 &

# 第二步
nohup python -m llava.serve.sglang_worker --host 0.0.0.0 --controller http://localhost:10000 --port 40000 --worker http://localhost:40000 --sgl-endpoint http://127.0.0.1:30000 >> 3_1_2_log_serve_sglang_worker.txt 2>&1 &
###
```
### 方式二：
```
export HF_ENDPOINT=https://hf-mirror.com
nohup python -m llava.serve.model_worker --host 0.0.0.0 --controller http://localhost:10000 --port 40000 --worker http://localhost:40000 --model-path liuhaotian/llava-v1.5-13b  >> 3_2_log_llava_serve_model_worker.txt 2>&1 &
```
