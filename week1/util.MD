# Utilidades

## Apagar todas as instâncias de containers


### bash
```
for x in `docker ps -aq`; do docker rm -f $x; done
```

### zsh
```
for x in `docker ps -aq`; docker rm -f $x;
```

