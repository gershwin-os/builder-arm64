# Use Debian Bookworm as the base image
FROM debian:bookworm-slim

# Install necessary build dependencies
RUN apt-get update && apt-get upgrade

# Install things for Docker
RUN apt-get apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

RUN echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io

RUN apt install -y curl git jq live-build sudo unzip && \
  git clone https://github.com/gnustep/tools-scripts && \
  ./tools-scripts/install-dependencies-linux && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
