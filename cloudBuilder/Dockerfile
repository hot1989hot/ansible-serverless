ARG BASE_IMAGE=ubuntu:focal
FROM ${BASE_IMAGE}

ARG ANSIBLE_VERSION=latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install ansible openssh-client curl apt-transport-https ca-certificates gnupg -y
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" |  tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN apt-get update && apt-get install google-cloud-sdk -y
RUN ansible --version
RUN ansible-playbook --version
RUN gcloud --version
ENTRYPOINT ["/usr/bin/ansible-playbook"]
# ENTRYPOINT ["/usr/bin/bash"]
