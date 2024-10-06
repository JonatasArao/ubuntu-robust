FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    sudo \
    curl \
    wget \
    vim \
    nano \
    git \
    net-tools \
    iputils-ping \
    dnsutils \
    bash-completion \
    build-essential \
    software-properties-common \
    python3 \
    python3-pip \
    nodejs \
    npm \
    libreadline-dev \
    clang \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash neo \
    && echo 'neo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER neo

WORKDIR /home/neo

CMD ["/bin/bash"]
