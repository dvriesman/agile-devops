# Curso Infraestrutura Ágil com práticas DevOps - Avaliação Final

## Instruções gerais

- NÃO UTILIZE COMANDOS DE EXCLUSÃO ! NÃO USE DELETE EM NENHUMA HIPÓTESE.

- Identifique o nome do seu time.
- Use o template ResultadoAtividades.MD para postar os resultados.
- Para enviar os resultados:
* Crie um pacote tar.gz com o arquivo ResultadoAtividades.MD e os demais artefatos (imagens), use o nome da equipe.
* Ao final, envie o arquivo equipe.tar.gz para o e-mail dvriesman@gmail.com

## Atividade 01 - 10 pontos

-  Crie e publique a imagem docker para o Dockerfile disponível na pasta game
-  Dica: Efetue a correções necessárias do Dockerfile para que o mesmo compile
-  Requisitos: A publicação deverá ocorrer no Dockerhub, num respositório 
de um membro do time, e deverá ser pública.

## Atividade 02 - 20 pontos

- Crie um repositório GIT para armazenar seus Helm Charts desta atividade
- Crie um Helm Chart para realizar o Deployment da aplicação gerada na atividade 01
- Publique seu helm chart no repositório museum disponível no Cluster K8S.
Dica: Parte da atividade é identificar o endereço onde o Museum foi publicado. 
(Explore o Cluster sem alterar nada, somente para achar o endereço).


## Atividade 03 - 30 pontos

- Adicione o repositório Museum aos repositórios do Helm.
- Instale o Chart criado no passo anterior no Kubernetes através do do Museum.
- Faça um port-forward para o POD, acesse e tire um screenshot da tela.

## Atividade 04 - 20 pontos

- Identifique e corrija todos os problemas nos deployments da namespace do seu time.
- Habilite somente para um request com Header "genero:masc" ir para a versão 01. 
- Tire um snapshot da tela com todos os seus pods Running.

## Atividade 05 - 10 pontos

- Crie um novo JOB no Jenkins para publicar automaticamente as mudanças no seu Helm Chart
criado na atividade 02 no Museum. (Use o Jenkins disponível no Cluster).

## Atividade 06 - 10 pontos

- Verifique os arquivos na pasta infra
- Instale o terraform: https://www.terraform.io/downloads.html
- Verifique a estratégia de deployment (plano) gerado pelo terraform 
para os arquivos que estão no diretório "infra"
- Efetue as correções necessárias
- Verifique o plano novamente.

## Atividade 07 - 10 pontos

- Acesse o diretório ~/lab/vm01
- Suba a máquina virtual disponível.
- Estabeleça uma conexão SSH
- Anote o conteúdo do arquivo /opt/theend
- Destrua a vm


  



 



