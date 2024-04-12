# Use Debian Bookworm as the base image
FROM arm64v8/debian:bookworm-slim

# Update and upgrade the system
RUN apt-get update && apt-get upgrade -y

# Install necessary build dependencies
RUN apt install -y curl git jq live-build qemu-arm-static sudo unzip && \
  git clone https://github.com/gnustep/tools-scripts && \
  ./tools-scripts/install-dependencies-linux && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
