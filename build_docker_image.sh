#!/usr/bin/env bash

set +x

docker build --network host -t aws-eks:dev .
