
FROM openresty/openresty:alpine-fat
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
WORKDIR /pmail-api
COPY . /pmail-api
RUN /usr/local/openresty/luajit/bin/luarocks install /pmail-api/pmail-api-dev-1.rockspec

RUN /usr/local/openresty/luajit/bin/luarocks install pop3
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-mail
