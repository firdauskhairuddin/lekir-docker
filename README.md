#####################################
# Setup instructions - Lekir Docker
#####################################

Make sure to install docker and docker compose on your pc

Change permission on setup.sh for linux

chmod +x setup.sh
chmod +x start-lekir.sh
chmod +x stop-lekir.sh

Run setup script

./setup.sh

Or manual run this command in the same directory of docker-compose.yml

docker compose build

docker compose up

Access lekir-docker in this
http://localhost:1337

or

http://127.0.0.1:1337

#Star/Stop Docker
./start-lekir.sh 
./stop-lekir.sh


# Notes
List running container
docker ps

Stopping running container
docker stop <CONTAINER_ID>

List docker images
docker images

Delete docker images
docker rmi <IMAGE_ID>

Force delete docker images
docker rmi <IMAGE_ID>

Accessing shell
docker ps -it <CONTAINER_ID> /bin/bash
docker ps -it <CONTAINER_ID> /bin/sh



@@ Information @@
This docker will bind to port 3304, 1337 & 4444 on your localhost
3304 - mysql
1337 - web
4444 - port for reverse shell or etc

@@ Make sure @@
No service are currently running on this port


#majulah malaysiaku @firdauskhairuddin
