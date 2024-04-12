# Use Debian Bookworm as the base image
FROM debian:bookworm-slim

# Install necessary build dependencies
RUN apt-get update && \
  apt install -y curl git jq live-build sudo unzip && \
  git clone https://github.com/gnustep/tools-scripts && \
  ./tools-scripts/install-dependencies-linux && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
