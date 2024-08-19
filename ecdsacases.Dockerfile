FROM mcr.microsoft.com/azurelinux/base/core:3.0

# Based on https://github.com/microsoft/go-images/blob/microsoft/main/src/microsoft/1.23/cbl-mariner2.0/Dockerfile
RUN set -eux; \
	tdnf install -y \
		binutils \
		gcc \
		glibc \
		glibc-devel \
		iana-etc \
		kernel-headers \
		tar \
		wget \
		\
		ca-certificates \
		\
		git \
		shadow-utils \
		util-linux \
	; \
	tdnf clean all

RUN tdnf install -y golang

WORKDIR /work

RUN git clone https://github.com/golang-fips/openssl.git . ; \
	git checkout v2.0.3

RUN CGO_ENABLED=1 go test . -run ECDSA
