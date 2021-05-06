#!/bin/bash

. ./scripts/env_vars.sh

# Install the GCP Provider on Crossplane
kubectl apply -f crossplane/provider-gcp.yml
sleep 10


# Use envsubst to replace env var values in the provider-config YAML template file
envsubst \
    < crossplane/provider-config-gcp.template.yml \
    > crossplane/provider-config-gcp.yml

# Configure the GCP Provider
kubectl apply -f crossplane/provider-config-gcp.yml