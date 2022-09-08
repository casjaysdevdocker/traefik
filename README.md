## 👋 Welcome to traefik 🚀  

traefik README  
  
  
## Run container

```shell
dockermgr update traefik
```

### via command line

```shell
docker pull casjaysdevdocker/traefik:latest && \
docker run -d \
--restart always \
--name casjaysdevdocker-traefik \
--hostname casjaysdev-traefik \
-e TZ=${TIMEZONE:-America/New_York} \
-v $HOME/.local/share/docker/storage/traefik/traefik/data:/data \
-v $HOME/.local/share/docker/storage/traefik/traefik/config:/config \
-p 80:80 \
casjaysdevdocker/traefik:latest
```

### via docker-compose

```yaml
version: "2"
services:
  traefik:
    image: casjaysdevdocker/traefik
    container_name: traefik
    environment:
      - TZ=America/New_York
      - HOSTNAME=casjaysdev-traefik
    volumes:
      - $HOME/.local/share/docker/storage/traefik/data:/data:z
      - $HOME/.local/share/docker/storage/traefik/config:/config:z
    ports:
      - 80:80
    restart: always
```

## Authors  

🤖 casjay: [Github](https://github.com/casjay) [Docker](https://hub.docker.com/r/casjay) 🤖  
⛵ CasjaysDevdDocker: [Github](https://github.com/casjaysdev) [Docker](https://hub.docker.com/r/casjaysdevdocker) ⛵  
