#!/bin/bash

. ./scripts/env_vars.sh

# Install Crossplane
kubectl create namespace $CROSSPLANE_NS
helm repo add crossplane-stable https://charts.crossplane.io/stable
helm repo update
helm install crossplane --namespace $CROSSPLANE_NS crossplane-stable/crossplane --version $CROSSPLANE_VERSION
