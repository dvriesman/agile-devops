# Deployment de uma simples aplicação em Python

## Atualizar entradas dos repositórios apt

```
sudo apt update
```

## Instalar o Python3 and Pip3

```
$ sudo apt install python3
$ sudo apt install pip3
```

## Copiar aplicação para o local de execução
```
$ cp /media/share/app01 /opt/app01
```

## Instalar dependências
```
$ cd /opt/app01
$ pip3 install -r requirements.txt
```


## Executar aplicação para ver se funciona
```
$ python app.py
```

## Deixar o arquivo executável e trocar a permissão para executar com o usuário vagrant
```
$ sudo chmod +x app.py
$ sudo chown vagrant:root app.py
```

## Colocar a aplicação para rodar via Systemd


```
$ sudo vi /lib/systemd/system/firstapp.service

[Unit]
Description=FirstApp Service

[Install]
WantedBy=multi-user.target

[Service]
User=vagrant
WorkingDirectory=/opt/v1
ExecStart=/opt/v1/app.py
StandardInput=tty-force
TimeoutSec=600
``` 

## Recarregar systemd

```
$ sudo systemctl daemon-reload
```

## Iniciar serviço

```
$ sudo systemctl start firstapp.service
```

## Verificar o status do serviço
```
$ sudo systemctl status firstapp.service

```

## Testar serviço
```
$ curl http://localhost:9090/xapi/hello

```

## Baixar serviço
```
$ sudo systemctl stop firstapp.service

```










