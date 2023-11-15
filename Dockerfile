From nvidia/cuda:11.0.3-cudnn8-runtime-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update && apt-get install -y --no-install-recommends \
    tzdata git python3 python3-pip 
RUN pip3 install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip3 install tensorboardx==2.2 pyyaml timm tqdm scipy numpy==1.19.* opencv-python-headless six protobuf==3.20 einops matplotlib==3.5.* pillow==6.*
