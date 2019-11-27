#!/bin/sh

cat <<EOF | kubectl apply -f -
apiVersion: cert-manager.io/v1alpha2
kind: Issuer
metadata:
  name: letsencrypt-staging
  namespace: istio-system
spec:
  acme:
    email: dvriesman@gmail.com
    server: https://acme-staging-v02.api.letsencrypt.org/directory
    privateKeySecretRef:
      name: staging-issuer-key
    solvers:
    - http01:
        ingress:
          class: istio
---
EOF

################################
cat <<EOF | kubectl apply -f -
apiVersion: cert-manager.io/v1alpha2
kind: Issuer
metadata:
  name: letsencrypt-prod
  namespace: istio-system
spec:
  acme:
    email: dvriesman@gmail.com
    server: https://acme-v02.api.letsencrypt.org/directory
    privateKeySecretRef:
      name: prod-issuer-key
    solvers:
    - http01:
        ingress:
          class: istio

EOF


