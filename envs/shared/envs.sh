#!/bin/bash

# name of environment
export ENV_NAME=shared

export ENV_DIR="./envs/${ENV_NAME}/"


## Grafana
export GRAFANA_ADMIN_PASSWORD=cK*4jH97
export GRAFANA_DNS="grafana.xyz.com"

## Elasticsearch
export ELASTICSEARCH_USERNAME=elastic
export ELASTICSEARCH_PASSWORD=test

export ELASTICSEARCH_URL="es-logs.xyz.com"
export KIBANA_DNS="kibana.xyz.com"

##Prometheus
export PROMETHEUS_ENDPOINT="prometheus-shared.xyz.com/*"
export PROMETHEUS_DEV_ENDPOINT="prometheus-dev.xyz.com/*"
export PROMETHEUS_PROD_ENDPOINT="prometheus-prod.xyz.com/*"
export SLACK_API_URL=""
export SLACK_CHANNEL=""