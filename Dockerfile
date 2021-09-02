FROM ubuntu:20.04

RUN apt-get update && \
apt-get install software-properties-common -y && \
apt-get install curl -y && \
curl -sL https://aka.ms/InstallAzureCLIDeb | bash  && \
add-apt-repository ppa:deadsnakes/ppa && \
apt update && \
apt install python3.8 && \
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
apt install terraform && \
rm -rf /var/lib/apt/lists/*


COPY scripts scripts

RUN chmod +x scripts/*.sh

CMD scripts/az_login.sh && scripts/terraform_apply.sh bash