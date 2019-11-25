#!/bin/sh


helm repo add istio.io https://storage.googleapis.com/istio-release/releases/1.4.0/charts/

helm repo update

helm install istio.io/istio-init --name istio-init --namespace istio-system

helm install istio.io/istio \
  --name istio \
  --namespace istio-system \
  --set kiali.enabled=true \
  --set values.gateways.istio-ingressgateway.sds.enabled=true

