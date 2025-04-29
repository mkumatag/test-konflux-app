ARG BASE_UBI_IMAGE_TAG=9.5-1745855087
FROM registry.access.redhat.com/ubi9/ubi-minimal:${BASE_UBI_IMAGE_TAG} AS base-builder

RUN echo 'Hello, World!' > /test.txt
