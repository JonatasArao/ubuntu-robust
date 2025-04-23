FROM ubuntu:22.04

COPY packages.txt /workspace/packages.txt
COPY python_requirements.txt /workspace/python_requirements.txt

RUN apt-get update && apt-get upgrade -y && \
    while read -r package; do \
        apt-get install -y "$package"; \
    done < /workspace/packages.txt && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r /workspace/python_requirements.txt

WORKDIR /workspace
