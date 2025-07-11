# Dockerfile
FROM debian:bullseye

# Install build essentials
RUN apt-get update && \
    apt-get install -y cmake g++ make && \
    apt-get clean

# Set working directory
WORKDIR /app
