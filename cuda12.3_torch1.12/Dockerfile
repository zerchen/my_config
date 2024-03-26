FROM nvidia/cuda:12.3.2-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES graphics,utility,compute,display
SHELL ["/bin/bash", "-c"]

RUN apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    libglvnd-dev \
    software-properties-common \
    ffmpeg \
    unzip \
    lsb-release \
    vim \
    git \
    cmake \
    curl \
    libboost-dev \
    make \
    wget \
    htop \
    byobu \
    python3-dev \
    python3-pip \
    libvulkan1 \
    vulkan-tools \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install gym==0.25.2 open3d transforms3d imageio

RUN pip3 install sapien==2.2.1 networkx==2.8.8

RUN pip3 install torch torchvision --extra-index-url https://download.pytorch.org/whl/cu113
