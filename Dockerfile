FROM nginx:latest
WORKDIR /
RUN apt-get update && \
    apt-get install -y file && \
    rm -rf /var/lib/apt/lists/*
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY html/ /usr/share/nginx/html/