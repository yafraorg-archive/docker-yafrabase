# Yafra Docker Base Image
Based on docker's ubuntu latest this is the source for all other yafra images.
It can be used through docker and the name "docker-yafrabase"

## local install and run
Run the follow commands on your local linux with docker installed:

```bash
sudo docker pull yafraorg/docker-yafrabase
sudo docker run -t -p 192.168.9.1:80:80 -i yafraorg/docker-yafrabase /bin/bash
```

## Child images

 * [Java](https://github.com/yafraorg/docker-yafrajava) @ [Docker Hub](https://registry.hub.docker.com/u/yafraorg/docker-yafrajava/)
 * [Python](https://github.com/yafraorg/docker-yafrapython) @ [Docker Hub](https://registry.hub.docker.com/u/yafraorg/docker-yafrapython/)
 * [NodeJS](https://github.com/yafraorg/docker-yafranodejs) @ [Docker Hub](https://registry.hub.docker.com/u/yafraorg/docker-yafranodejs/)
 * [PHP](https://github.com/yafraorg/docker-yafraphp) @ [Docker Hub](https://registry.hub.docker.com/u/yafraorg/docker-yafraphp/)
 * [Perl](https://github.com/yafraorg/docker-yafraperl) @ [Docker Hub](https://registry.hub.docker.com/u/yafraorg/docker-yafraperl/)
 * [C](https://github.com/yafraorg/docker-yafrac) @ [Docker Hub](https://registry.hub.docker.com/u/yafraorg/docker-yafrac/)
 * [.net](https://github.com/yafraorg/docker-yafranet) @ [Docker Hub](https://registry.hub.docker.com/u/yafraorg/docker-yafranet/)

### Specific images
 * [Database](https://github.com/yafraorg/docker-yafradb) @ [Docker Hub](https://registry.hub.docker.com/u/yafraorg/docker-yafradb/)
 * Messaging / RabbitMQ @ [Docker Hub](https://registry.hub.docker.com/u/dockerfile/rabbitmq/)

Get all dockers via
```bash
sudo bash
docker pull yafraorg/docker-yafrabase
docker pull yafraorg/docker-yafranodejs
docker pull yafraorg/docker-yafraphp
docker pull yafraorg/docker-yafrapyhton
docker pull yafraorg/docker-yafrac
docker pull yafraorg/docker-yafrajava
docker pull yafraorg/docker-yafraperl
docker pull yafraorg/docker-yafranet

docker pull yafraorg/docker-yafradb:mysql
docker pull yafraorg/docker-yafradb:postgress
docker pull yafraorg/docker-yafradb:mongodb
docker pull yafraorg/docker-yafradb:dataonly
```
 
# Yafra links
* [Wiki](https://github.com/yafraorg/yafra/wiki)
* [Dcoker usage](https://github.com/yafraorg/yafra/wiki/Docker)
* [Projects](https://github.com/yafraorg/yafra/wiki/Projects)
