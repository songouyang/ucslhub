#! /bin/bash

echo -ne "Stopping the Hub"
echo
echo -ne "Disconnecting network from Nginx"
docker network disconnect ucslhub_jupynet nginx
docker network disconnect ucslhub_jupynet docker-gen
echo
echo -ne "Tearing down the Hub resources"
docker-compose down
echo
echo -ne "Done"
echo
