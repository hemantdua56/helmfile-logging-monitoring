#!/bin/bash

# name of environment
export ENV_NAME=prod

export ENV_DIR="./envs/${ENV_NAME}/"


## Elasticsearch
export ELASTICSEARCH_USERNAME=elastic
export ELASTICSEARCH_PASSWORD=test
export ELASTICSEARCH_URL="es-logs.xyz.com"


##Prometheus
# export PROMETHEUS_ENDPOINT="prometheus-prod.api.xyz.com"
export SLACK_API_URL=""
export SLACK_CHANNEL=""