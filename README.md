# alpine_squid-container

Alpine based Squid proxy container, minimal setup

* Added squid and curl packages to Alpine latest image
* Removed no http ports from safe ports on squid config file
* Removed most private networks from allowed origins

- How to build image:

docker build -t new_docker_image_name PATH_to_Dockerfile

After that image were be stored locally

- Test image:

docker container run -ti new_docker_image_name /bin/sh

- Run container listen on 3128 host port

docker run -d -p 3128:3128 new_docker_image_name

Using docker-compose:

* After build local image edit docker-compose.yml and change image name to match your builded image
* Create logs folder to get logs from squid on host

  mkdir logs

* Lauch container

  docker-compose up





docker build --tag=soephub/squid .
docker push soephub/squid:latest

