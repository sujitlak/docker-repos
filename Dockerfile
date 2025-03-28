# Use an official Ubuntu as a parent image
FROM ubuntu:22.04

# Set the maintainer label
# LABEL maintainer="yourname@example.com"

# Set environment variables to avoid interactive prompts during package installations
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies for building C++ programs (make, g++, etc.)
RUN apt-get update && apt-get install -y \
    build-essential \
    make \
    g++ \
    cmake \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR ~/app

# Copy the local project files into the container
COPY actions-test/basic-program ~/app

# Run make to build the project
# RUN make

# Set the default command to run the program (replace "your_program" with the name of your executable)
# CMD ["./your_program"]
