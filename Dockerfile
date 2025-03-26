ARG BASE_UBI_IMAGE_TAG=9.5-1741850109
FROM registry.access.redhat.com/ubi9/ubi-minimal:${BASE_UBI_IMAGE_TAG} AS base-builder

ARG PYTHON_VERSION=3.12
ARG OPENBLAS_VERSION=0.3.29

RUN microdnf install -y dnf \
    && dnf install -y tar \
    && curl -sL https://ftp2.osuosl.org/pub/ppc64el/openblas/latest/Openblas_${OPENBLAS_VERSION}_ppc64le.tar.gz | tar xvf - -C /usr/local

RUN echo 'Hello, World!' > /test.txt
