# Introdução ao Vagrant

## Adicionar imagens dos sistemas operacionais (vagrant boxes)

```
$ vagrant box add generic/ubuntu1804 --provider=virtualbox
```

## Verificar os boxes instalados

```
$ vagrant box list
```

## Criar setup para máquina virtual

```
$ mkdir test_ubuntu
$ cd test_ubuntu
$ vi Vagrantfile
```

## Template para o Vagrantfile

```
# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'


Vagrant.configure("2") do |config|

  ##### DEFINE VM #####
  config.vm.define "ubuntu-01" do |config|
  config.vm.hostname = "ubuntu-01"
  config.vm.box = "generic/ubuntu1804"
  config.vm.box_check_update = false
  config.vm.network "private_network", ip: "192.168.18.9"
  config.vm.provider :libvirt do |v|
    v.memory = 2048
    end
  end
end
```

## Subir o ambiente

```
$ vagrant up
```

## Entrar no ambiente via SSH

```
$ vagrant ssh
```

## Parar parar a VM

```
$ vagrant halt
```

## Para matar a VM

```
$ vagrant destroy
```
