# Exemplo de generators - para gerar os yaml templates


kubectl run --generator=run-pod/v1 nginx --image=nginx --dry-run -o yaml

kubectl run --generator=deployment/v1beta1 nginx --image=nginx --dry-run -o yaml

kubectl run --generator=deployment/v1beta1 nginx --image=nginx --dry-run --replicas=4 -o yaml > nginx-deployment.yaml

kubectl expose pod redis --port=6379 --name redis-service --dry-run -o yaml


