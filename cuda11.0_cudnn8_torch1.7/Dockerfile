From nvidia/cuda:11.0.3-cudnn8-devel-ubuntu16.04

RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6 git ninja-build libglib2.0-0 libsm6 libxrender-dev libxext6 net-tools\
    build-essential cmake git wget libopencv-dev libsnappy-dev python-dev python-pip tzdata vim openssh-server curl libboost-dev && apt-get clean \
    apt-get install -y libevent-dev libncurses-dev make automake && rm -rf /var/lib/apt/lists/*

RUN wget --quiet https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh && \
    echo "export PATH=/opt/conda/bin:$PATH \n" >> ~/.bashrc

RUN /opt/conda/bin/conda install pytorch==1.7.0 torchvision==0.8.0 torchaudio==0.7.0 cudatoolkit=11.0 -c pytorch

RUN /opt/conda/bin/pip install mmcv-full -f https://download.openmmlab.com/mmcv/dist/cu110/torch1.7.0/index.html

RUN /opt/conda/bin/pip install cython 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'

RUN rm -rf ~/.vimrc && cd ~ && git clone https://github.com/ROC-Zerui/my_config && mv ~/my_config ~/.vim && \
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN cd /tmp && wget https://github.com/tmux/tmux/archive/2.9.tar.gz && tar xvzf 2.9.tar.gz && cd tmux-2.9/ && \
    bash autogen.sh && ./configure && make && make install && cd .. && rm -rf ./tmux-2.9* && \
    git clone https://github.com/gpakosz/.tmux.git && ln -s -f .tmux/.tmux.conf && cp .tmux/.tmux.conf.local .

#RUN /opt/conda/bin/python -m pip install 'git+https://github.com/facebookresearch/detectron2.git'

#RUN git clone https://github.com/open-mmlab/mmdetection.git && cd mmdetection && \
    #/opt/conda/bin/pip install -r requirements/build.txt && /opt/conda/bin/pip install -v -e .
