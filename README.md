# docker-nginx
docker nginx

docker build -t docker.laosiji.com:5000/nginx .
docker run -itd --name nginx_1 -v /root/log:/var/log/nginx/log/  -v /root/kov-blog:/root/kov-blog -p 80:80 docker.laosiji.com:5000/nginx
