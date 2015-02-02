# Yafra Docker Base Image
Based on docker's ubuntu latest this is the source for all other yafra images.
It can be used through docker and the name "docker-yafrabase"

## local install and run
Run the follow commands on your local linux with docker installed:
    sudo docker pull yafraorg/docker-yafrabase
    sudo docker run -t -p 192.168.9.1:80:80 -i yafraorg/docker-yafraphp /bin/bash
