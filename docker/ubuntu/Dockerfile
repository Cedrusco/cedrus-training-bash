FROM ubuntu:18.04 as cedrus-training-bash-image

# Ensure source lists are ready for installation
RUN apt-get autoclean
RUN apt-get update

# Install dependencies
COPY packages.txt /
RUN sed 's/#.*//' packages.txt | xargs apt-get install -y

# Set up non-root user with no password
RUN adduser --disabled-password --gecos '' cedrus
RUN usermod -aG sudo cedrus
RUN passwd -d cedrus
USER cedrus

# Ensure shell is bash
SHELL [ "/bin/bash" ]

# Set up workdir and copy scripts
WORKDIR /home/cedrus
ADD ./scripts ./