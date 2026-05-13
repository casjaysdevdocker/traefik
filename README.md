## 👋 Welcome to traefik 🚀  

traefik README  
  
  
## Install my system scripts  

```shell
 sudo bash -c "$(curl -q -LSsf "https://github.com/systemmgr/installer/raw/main/install.sh")"
 sudo systemmgr --config && sudo systemmgr install scripts  
```
  
## Automatic install/update  
  
```shell
dockermgr update traefik
```
  
## Install and run container
  
```shell
dockerHome="/var/lib/srv/$USER/docker/casjaysdevdocker/traefik/traefik/latest/rootfs"
mkdir -p "/var/lib/srv/$USER/docker/traefik/rootfs"
git clone "https://github.com/dockermgr/traefik" "$HOME/.local/share/CasjaysDev/dockermgr/traefik"
cp -Rfva "$HOME/.local/share/CasjaysDev/dockermgr/traefik/rootfs/." "$dockerHome/"
docker run -d \
--restart always \
--privileged \
--name casjaysdevdocker-traefik-latest \
--hostname traefik \
-e TZ=${TIMEZONE:-America/New_York} \
-v "$dockerHome/data:/data:z" \
-v "$dockerHome/config:/config:z" \
-p 80:80 \
casjaysdevdocker/traefik:latest
```
  
## via docker-compose  
  
```yaml
version: "2"
services:
  ProjectName:
    image: casjaysdevdocker/traefik
    container_name: casjaysdevdocker-traefik
    environment:
      - TZ=America/New_York
      - HOSTNAME=traefik
    volumes:
      - "/var/lib/srv/$USER/docker/casjaysdevdocker/traefik/traefik/latest/rootfs/data:/data:z"
      - "/var/lib/srv/$USER/docker/casjaysdevdocker/traefik/traefik/latest/rootfs/config:/config:z"
    ports:
      - 80:80
    restart: always
```
  
## Get source files  
  
```shell
dockermgr download src casjaysdevdocker/traefik
```
  
OR
  
```shell
git clone "https://github.com/casjaysdevdocker/traefik" "$HOME/Projects/github/casjaysdevdocker/traefik"
```
  
## Build container  
  
```shell
cd "$HOME/Projects/github/casjaysdevdocker/traefik"
buildx 
```
  
## Authors  
  
🤖 casjay: [Github](https://github.com/casjay) 🤖  
⛵ casjaysdevdocker: [Github](https://github.com/casjaysdevdocker) [Docker](https://hub.docker.com/u/casjaysdevdocker) ⛵  
