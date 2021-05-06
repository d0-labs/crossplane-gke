#!/bin/bash

# Set environement variables for Google Cloud
export GCP_PROJECT_ID="<gcp_project_id>"
export GCP_SERVICE_ACCOUNT_NAME="<gcp_service_account_name>@$GCP_PROJECT_ID.iam.gserviceaccount.com"
export GCP_SERVICE_ACCOUNT_KEYFILE="<gcp_service_account_keyfile>"
export BASE64ENCODED_GCP_PROVIDER_CREDS=$(base64 $GCP_SERVICE_ACCOUNT_KEYFILE | tr -d "\n") # base64 encode the GCP credentials

export GKE_CLUSTER_NAME="<gke_cluster_name>"
export GKE_CLUSTER_ZONE="<gke_cluster_zone>"


# Set environment vars for Crossplane installation
export CROSSPLANE_VERSION="1.2.0"
export CROSSPLANE_NS="crossplane-system"