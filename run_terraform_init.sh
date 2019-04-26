#!/usr/bin/env bash

set +x

docker run \
  --net=host \
  -v $(pwd)/src:/src \
  -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
  -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
  -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
  aws-eks:dev \
  fmt && terraform init
