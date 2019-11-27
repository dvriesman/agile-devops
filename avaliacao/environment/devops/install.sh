#!/bin/sh

helm install --name my-chartmuseum -f custom.yaml stable/chartmuseum
helm install --name jenkins ./jenkins


