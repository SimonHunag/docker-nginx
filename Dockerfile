#生产nginx基础镜像
FROM nginx

MAINTAINER SimonHuang <huanghuapeng@kaike.la>

#设置时区
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && echo 'Asia/Shanghai' >/etc/timezone \

#定义工作目录
ENV NGINX_BASE /etc/nginx/

COPY nginx.conf  /etc/nginx/
COPY hosts /etc/nginx/conf.d

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# 设置工作目录
WORKDIR /etc/nginx

# 启动nginx
CMD service nginx start

# 设置端口
EXPOSE 80
#EXPOSE 443