ARG BASE_UBI_IMAGE_TAG=9.6-1749489516
FROM registry.access.redhat.com/ubi9/ubi-minimal:${BASE_UBI_IMAGE_TAG} AS base-builder

RUN echo 'Hello, World!' > /test.txt
