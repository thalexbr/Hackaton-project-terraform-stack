#!/bin/bash

USAGE="Usage:$0 <ACTION> <ARTIFACT_NAME> <WORKSPACE_NAME>"

ACTION=$1
ARTIFACT_NAME=$2
WS_NAME=$3

if [[ "$ACTION" = "help" ]]; then
    #statements
    echo $USAGE >&2
    echo;
    exit 1
fi

if [[ $# -ne 3 ]]; then
    #statements
    echo "Missing arguments" >&2
    echo $USAGE >&2
    echo;
    exit 1
fi

ARTIFACT_DIR="artifacts/$ARTIFACT_NAME"

if [[ -d $ARTIFACT_DIR ]]; then
    #statements
    cd $ARTIFACT_DIR
else
    echo "Directory $ARTIFACT_DIR doesn't exist. Please check the artifact name ($ARTIFACT_NAME)."
    echo $USAGE
    echo;
    exit 1
fi


echo "Current location: $PWD"

terraform init
terraform workspace select $WS_NAME || terraform workspace new $WS_NAME
terraform destroy -auto-approve

if [[ "$ACTION" = "destroy" ]]; then
    #statements
    echo "Leaving, $ACTION selected..."
    echo;
    exit 1 
fi

terraform plan

if [[ "$ACTION" = "plan" ]]; then
    #statements
    echo "Leaving, $ACTION selected..."
    echo;
    exit 1 
fi

terraform apply -auto-approve