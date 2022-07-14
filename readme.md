# docker-example

## convenient commands

### Docker image & container

- Criar uma imagem: `docker image build -t exemplo-imagem . -f .\Dockerfile`
  - o -f serve para identificar o arquivo
- Para listar as imagens que vc tem: `docker image list`
- Criar e iniciar o container: `docker container run --publish 3000:80 --name exemplo-container exemplo-imagem`
  - Publish significa que ele vai abrir a porta 80 dentro do meu pc, mas irá expor a 3000 do container
- Listar os containeres que estão ativos: `docker container list`
- Listar todos os containeres: `docker container list -a`
- Parar o container: `docker stop exemplo-container`
- Remover o container: `docker rm exemplo-container`
- Remover a imagem: `docker image rm exemplo-imagem`

### Docker compose

Para iniciar tudo: `docker compose up`
Para parar tudo (se não puder dar CTRL+C): `docker-compose stop`
Para limpar os containers criados: `docker-compose rm -f`

# Technical Requirements

- Docker
