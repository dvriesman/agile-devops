#!/bin/sh

cat <<EOF | kubectl apply -f -
apiVersion: networking.istio.io/v1alpha3
kind: Gateway
metadata:
  name: istio-autogenerated-k8s-ingress
  namespace: istio-system
  labels:
    app: ingressgateway
spec:
  selector:
    istio: ingressgateway
  servers:
  - port:
      number: 80
      protocol: HTTP2
      name: http
    hosts:
    - agile-devops.club
  - port:
      number: 443
      protocol: HTTPS
      name: https-default
    tls:
      mode: SIMPLE
      serverCertificate: "sds"
      privateKey: "sds"
      credentialName: "agile-devops-club-prod"
    hosts:
    - agile-devops.club


