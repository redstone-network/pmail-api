
FROM openresty/openresty:alpine-fat
RUN /usr/local/openresty/luajit/bin/luarocks install pop3
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-mail
RUN /usr/local/openresty/luajit/bin/luarocks install pmail-api
