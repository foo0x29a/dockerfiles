FROM google/cloud-sdk:alpine

LABEL image="foo0x29a/terraform"
LABEL tag="0.12.8"
LABEL ref='https://github.com/foo0x29a/dockerfiles'

ENV PATH $PATH:/usr/lib/google-cloud-sdk/bin

RUN wget https://releases.hashicorp.com/terraform/0.12.8/terraform_0.12.8_linux_amd64.zip \
	 && unzip terraform_0.12.8_linux_amd64.zip \
	 && mv terraform /bin \
	 && rm terraform_0.12.8_linux_amd64.zip

RUN mkdir /.kube \
    && mkdir /.config \
    && chmod 777 /.kube \
    && chmod 777 /.config

