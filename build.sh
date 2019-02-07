#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

DOCKER_REPO_BASE="miniconda2"
IMG_TAG="centos7"
docker build -f ${DOCKER_REPO_BASE}/${IMG_TAG}/Dockerfile -t ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG} miniconda2/${IMG_TAG}
docker push ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG}

##
IMG_TAG="debian-buster"
docker build -f ${DOCKER_REPO_BASE}/${IMG_TAG}/Dockerfile -t ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG} ${DOCKER_REPO_BASE}/${IMG_TAG}
docker push ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG}

##
IMG_TAG="debian-stretch"
docker build -f ${DOCKER_REPO_BASE}/${IMG_TAG}/Dockerfile -t ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG} ${DOCKER_REPO_BASE}/${IMG_TAG}
docker push ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG}

##
DOCKER_REPO_BASE="miniconda3"

IMG_TAG="centos7"
docker build -f ${DOCKER_REPO_BASE}/${IMG_TAG}/Dockerfile -t ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG} ${DOCKER_REPO_BASE}/${IMG_TAG}
docker push ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG}

##
IMG_TAG="debian-buster"
docker build -f ${DOCKER_REPO_BASE}/${IMG_TAG}/Dockerfile -t ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG} ${DOCKER_REPO_BASE}/${IMG_TAG}
docker push ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG}

##
IMG_TAG="debian-stretch"
docker build -f ${DOCKER_REPO_BASE}/${IMG_TAG}/Dockerfile -t ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG} ${DOCKER_REPO_BASE}/${IMG_TAG}
docker push ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG}
