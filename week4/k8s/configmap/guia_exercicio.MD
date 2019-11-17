# Criando configmap de forma imperativa

kubectl create configmap my-config \
  --from-file=config.txt \
  --from-literal=extra-param=extra-value \
  --from-literal=another-param=another-value

# Listando config maps

kubectl get configmaps

# Visualizando em yaml

kubectl get configmaps my-config -o yaml

# Aplicando

kubectl apply -f files/kuard-config.yaml

# Verificando os parâmetros

kubectl exec kuard-config -- sh -xc "echo EXTRA_PARAM: \$EXTRA_PARAM; echo ANOTHER_PARAM: \$ANOTHER_PARAM && cat /config/my-config.txt"

# forward

kubectl port-forward kuard-config 8080:8080 &
