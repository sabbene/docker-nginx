FROM centos:latest

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install nginx

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

# ntp port
EXPOSE 80/tcp
EXPOSE 443/udp

# start nginx in the foreground
ENTRYPOINT ["nginx", "-g", "daemon off;", "-c", "/nginx/nginx.conf"]
