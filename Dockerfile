FROM alpine:3.23.3

WORKDIR /app

RUN apk add luarocks build-base unzip
RUN apk add lsof bash htop
RUN apk add lua lua-dev lua-ossl openresty

RUN apk info | grep -i luarocks
RUN luarocks-5.1 install lapis

COPY . . 

EXPOSE 3000

CMD ["lapis", "server"]
