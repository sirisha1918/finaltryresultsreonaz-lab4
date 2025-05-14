#!/bin/bash
# Download and install Istio
curl -L https://istio.io/downloadIstio | sh -

# Set Istio path
cd istio-*/bin
export PATH=$PWD:$PATH

# Install Istio with demo profile
istioctl install --set profile=demo -y

# Enable automatic sidecar injection
kubectl label namespace default istio-injection=enabled
