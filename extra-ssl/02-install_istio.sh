#!/bin/sh


helm repo add istio.io https://storage.googleapis.com/istio-release/releases/1.4.0/charts/

helm repo update

helm install istio.io/istio-init --name istio-init --namespace istio-system

sleep 30


helm upgrade --install istio \
  --namespace istio-system \
  --set kiali.enabled=true \
  --set gateways.istio-ingressgateway.sds.enabled=true \
  --set sds.enabled=true \
  --set values.sds.enabled=true \
  --set values.gateways.istio-ingressgateway.sds.enabled=true \
  --set values.global.k8sIngress.enabled=true \
  --set values.global.k8sIngress.enableHttps=true \
  --set values.global.k8sIngress.gatewayName=ingressgateway \
  istio.io/istio

