nohup python -m llava.serve.gradio_web_server --controller http://localhost:10000 --model-list-mode reload  >> 2_log_gradio_web_server.txt 2>&1 &
