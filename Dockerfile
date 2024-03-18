FROM nvidia/cuda:12.1.0-runtime-ubuntu22.04
RUN apt-get update && apt-get install -y libgl1 ffmpeg libsm6 libxext6 git python3 python3-pip python3-dev
WORKDIR /
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
RUN mv stable-diffusion-webui sd
WORKDIR /sd
RUN pip install -r requirements.txt
RUN pip install triton ninja
RUN export TORCH_CUDA_ARCH_LIST="6.0;6.1;6.2;7.0;7.2;7.5;8.0;8.6"
RUN pip install -v -U git+https://github.com/facebookresearch/xformers.git@main#egg=xformers