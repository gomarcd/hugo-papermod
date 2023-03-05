FROM nginx:alpine
RUN apk add wget
RUN wget -O /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.111.2/hugo_0.111.2_Linux-64bit.tar.gz && \
    tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin/ && \
    rm /tmp/hugo.tar.gz

WORKDIR /usr/share/nginx
CMD ["nginx", "-g", "daemon off;"]