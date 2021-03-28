From nvidia/cuda:11.0.3-cudnn8-devel-ubuntu16.04

RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6 git ninja-build libglib2.0-0 libsm6 libxrender-dev libxext6 net-tools\
    build-essential cmake git wget libopencv-dev libsnappy-dev python-dev python-pip tzdata vim openssh-server tmux curl libboost-dev && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN wget --quiet https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh && \
    echo "export PATH=/opt/conda/bin:$PATH \n" >> ~/.bashrc

RUN /opt/conda/bin/conda install pytorch==1.7.0 torchvision==0.8.0 torchaudio==0.7.0 cudatoolkit=11.0 -c pytorch

RUN /opt/conda/bin/pip install mmcv-full -f https://download.openmmlab.com/mmcv/dist/cu110/torch1.7.0/index.html

RUN rm -rf ~/.vimrc && cd ~ && git clone https://github.com/ROC-Zerui/my_config && mv ~/my_config ~/.vim

RUN git clone https://github.com/open-mmlab/mmdetection.git && cd mmdetection && \
    /opt/conda/bin/pip install -r requirements/build.txt && /opt/conda/bin/pip install -v -e .

RUN /opt/conda/bin/pip install cython 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'

RUN /opt/conda/bin/python -m pip install 'git+https://github.com/facebookresearch/detectron2.git'
