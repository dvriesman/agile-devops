## Install MicroK8s
```
sudo snap install microk8s --classic
```

## Adicionar o usuário normal (se for normal) ao grupo microk8s
```
sudo usermod -a -G microk8s denny
```

## Habilitar o Istio
```
microk8s.enable istio
```

## Baixar ISTIO 1.3.4
```
curl -L https://git.io/getLatestIstio | ISTIO_VERSION=1.3.5 sh -
```

## Aplicar Exemplo  Booking
```
microk8s.kubectl apply -f samples/bookinfo/platform/kube/bookinfo.yaml
```

## Criar o gateway e o virtualservices 
```
microk8s.kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml
```

## Pegar o NODE Port do ISTIO GATEWAY 
```
microk8s.kubectl -n istio-system get service istio-ingressgateway \
  -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}'
```

## Acessar no Browser:

http://localhost:NODE_PORT

## Criar os destination rules
```
microk8s.kubectl apply -f samples/bookinfo/networking/destination-rule-all.yaml
```

## Criar regra de tráfego baseado em usuário
```
microk8s.kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml
``` 

## Injetando uma falha HTTP - Delay
```
microk8s.kubectl apply -f samples/bookinfo/networking/virtual-service-ratings-test-delay.yaml
```

## Mandando todo mundo para v1
```
microk8s.kubectl apply -f samples/bookinfo/networking/virtual-service-all-v1.yaml
```
## 50 vs 50
```
microk8s.kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-50-v3.yaml
```











