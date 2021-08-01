FROM python:3.9-slim

RUN apt-get update && \
    apt-get install -y openssh-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install ansible ansible-lint
CMD ["/bin/bash"]
