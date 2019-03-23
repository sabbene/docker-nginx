docker run --name nginx --restart=always --detach -p 80:80/tcp -p 443:443/tcp -v git/docker-nginx/nginx/:/nginx/ -v /ssl/:/ssl/ --link freshrss:freshrss docker-nginx
