From nvidia/cudagl:11.3.0-devel-ubuntu20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y ffmpeg libsm6 libxext6 git ninja-build libglib2.0-0 libsm6 libxrender-dev libxext6 net-tools\
    build-essential cmake git wget libopencv-dev libsnappy-dev python-dev tzdata vim openssh-server curl libboost-dev\
    libevent-dev libncurses-dev make automake && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget --quiet https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh && \
    echo "export PATH=/opt/conda/bin:$PATH \n" >> ~/.bashrc

RUN /opt/conda/bin/conda install pytorch==1.12.1 torchvision==0.13.1 torchaudio==0.12.1 cudatoolkit=11.3 -c pytorch

#RUN rm -rf ~/.vimrc && cd ~ && git clone https://github.com/ROC-Zerui/my_config.git && mv ~/my_config ~/.vim && \
    #curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#RUN cd /tmp && wget https://github.com/tmux/tmux/archive/2.9.tar.gz && tar xvzf 2.9.tar.gz && cd tmux-2.9/ && \
    #bash autogen.sh && ./configure && make && make install && cd .. && rm -rf ./tmux-2.9* && cd &&\
    #git clone https://github.com/gpakosz/.tmux.git && ln -s -f .tmux/.tmux.conf && cp .tmux/.tmux.conf.local .
