#! /bin/bash

echo -ne "Initializing the Hub"
echo
echo -ne "Creating Attachable Overlay Network"
docker network create --attachable --driver overlay --subnet=10.10.11.0/24 ucslhub_jupynet
echo
echo -ne "Connecting the Network to Nginx for name based dynamic reverse proxying"
docker network connect ucslhub_jupynet nginx
docker network connect ucslhub_jupynet docker-gen
echo
echo -ne "Bringing up the hub"
echo
docker-compose up -d
echo
echo -ne "Done"

docker-compose logs -f
