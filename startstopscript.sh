#!/bin/bash



if [[ $1 == run ]];
then
  docker ps -a
  sleep 5
  docker run -d --rm --name web -p 8443:443 web
  docker ps 
  sleep 5
  echo "-----------------------------------------------------------"
  echo "curl https://mnovikov.westeurope.cloudapp.azure.com:8443"
  curl https://mnovikov.westeurope.cloudapp.azure.com:8443 
  sleep 5
  echo "-----------------------------------------------------------"
  echo "curl https://mnovikov.westeurope.cloudapp.azure.com:8443 -k"
  curl https://mnovikov.westeurope.cloudapp.azure.com:8443 -k
elif [[ $1 == stop ]];
then
docker stop web
echo "docker stopped"
else    
	echo "No Match"
fi
