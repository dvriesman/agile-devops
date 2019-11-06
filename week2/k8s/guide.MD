Setup Environment GCLOUD
========================

```
sudo apt-get update
sudo apt install python
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-203.0.0-linux-x86_64.tar.gz
tar -xvof google-cloud-sdk-203.0.0-linux-x86_64.tar.gz
echo "export PATH=$PATH:~/google-cloud-sdk/bin" >> .bashrc
source .bashrc
gcloud components install kubectl
```

gcloud login && setup cluster
=============================

```
gcloud auth login
gcloud container clusters get-credentials cluster-1 --zone us-east1-b --project xxxx
```

Create namespace
=============================

```
kubectl create namespace [namespace_name]
```

List namespace
=============================

```
kubectl get namespace
```

Setup default namespace
=======================

```
kubectl config set-context $(kubectl config current-context) --namespace=[namespace_name]
```

List Pods
=======================
```
kubectl get pods
```

List Pods com Labels
====================
```
kubectl get pods --show-labels
```

Pods que não estão rodando
==========================
```
kubectl get pods --field-selector=status.phase!=Running --all-namespaces
```

Aplicar YAML
=======================
```
kubectl apply -f [filename] -n [namespace]
```

Excluir deployment 
=======================
```
kubectl delete deployment [deployment_name] -n [namespace]
```

Abrindo Shell dentro do container
=================================
```
kubectl exec -it shell-demo -- /bin/bash
```


Criando segredo
===============

```
#Exemplo 01
kubectl create secret generic ${secret_name} --from-literal=[chave]=[valor]

#Exemplo 02
kubectl create secret docker-registry regcred --docker-server=${S} --docker-username=${U} --docker-password=${P} --docker-email=${E} 
```

Listando entradas no ingress
============================
```
kubectl get ingress -n [namespace]
```

Identificando o IP externo do Ingress
=====================================
```
kubectl get svc -n [namespace]

#==>Identifique o serviço do ingress controller

```

port-forward
================
```
kubectl port-forward svc/${SERVICE_NAME} ${porta_local}:${porta_remota} 

#or

kubectl port-forward pod/${POD_NAME} ${porta_local}:${porta_remota}

#existem outros or

```

Atualizar Imagem
================

```
kubectl set image deployment/tj-apolo-drsv tj-apolo=docker-unj-repo.softplan.com.br/unj/apoloserver:1.0.2
```



Install Helm
============

```
curl "https://kubernetes-helm.storage.googleapis.com/helm-v${HELM_VERSION}-linux-amd64.tar.gz" | tar zx
sudo mv linux-amd64/helm /usr/bin/
helm version --client
```

Init Helm Controller
====================

```
helm init --tiller-namespace=$TILLER_NAMESPACE
echo kubectl create clusterrolebinding "${APPLICATION_NAMESPACE}_tiller" --clusterrole=cluster-admin --serviceaccount=${APPLICATION_NAMESPACE}:default
kubectl get clusterrolebinding "${APPLICATION_NAMESPACE}_tiller" || kubectl create clusterrolebinding "${APPLICATION_NAMESPACE}_tiller" --clusterrole=cluster-admin --serviceaccount="${APPLICATION_NAMESPACE}:default"
```

Criando um novo Helm
====================
```
helm create ${MYHELM}
```


Instalando um Helm
==================
```
 helm install --name ${NOME_DA_INSTALACAO} \
      --set param=value,param1=value1, a=b, etc=... \
      --namespace=${NAMESPACE} \
      --tiller-namespace=${TILLER_NAMESPACE} \
      ${CHART}
```
Excluindo um Helm instalado
===========================
```
helm del --purge ${NOME_DA_INSTALACAO} --tiller-namespace ${TILLER_NAMESPACE}
```

Instalando o controlador do ingress
=====================================
```
helm install --name ingress-y --namespace=${namespace} --tiller-namespace=${tiller_namespace} stable/nginx-ingress
```




## Referência kubectl
======================
https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#-strong-getting-started-strong-

