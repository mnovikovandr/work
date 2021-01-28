#!/bin/bash



if [[ $1 == run ]];
then
  docker run -d --rm --name web -p 8443:443 web	
elif [[ $1 == stop ]];
then
docker stop web
else    
	echo "No Match"
fi

echo $1


# docker run -d --rm --name web -p 8443:443 ssl_nginx
