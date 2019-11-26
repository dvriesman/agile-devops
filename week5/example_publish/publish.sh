#!/bin/sh

HELM_HOME=/var/jenkins_home/linux-amd64

rm *.tgz
$HELM_HOME/helm lint test1
$HELM_HOME/helm package test1
curl --data-binary "@test1-0.1.0.tgz" http://localhost:9080/api/charts

exit

