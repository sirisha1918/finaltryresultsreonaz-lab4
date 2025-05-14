#!/bin/bash
# Create a resource group
az group create --name ZeroTrustRG --location eastus

# Create AKS cluster with monitoring enabled
az aks create --resource-group ZeroTrustRG --name ZeroTrustCluster --node-count 3 --enable-addons monitoring --generate-ssh-keys

# Get AKS credentials
az aks get-credentials --resource-group ZeroTrustRG --name ZeroTrustCluster
