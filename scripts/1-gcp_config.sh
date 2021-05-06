#!/bin/bash

. ./scripts/env_vars.sh

# Activate the service account
gcloud auth activate-service-account $GCP_SERVICE_ACCOUNT_NAME --key-file=$GCP_SERVICE_ACCOUNT_KEYFILE

# Set GCP project
gcloud config set project $GCP_PROJECT_ID

# Connect to cluster (also sets current context)
gcloud container clusters get-credentials $GKE_CLUSTER_NAME --zone $GKE_CLUSTER_ZONE --project $GCP_PROJECT_ID
