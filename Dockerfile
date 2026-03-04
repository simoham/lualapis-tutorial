FROM alpine:3.23.3

WORKDIR /app

RUN apk add luarocks build-base unzip
RUN apk add lsof bash htop
RUN apk add lua lua-dev lua-ossl openresty

RUN luarocks install lapis

COPY . . 

EXPOSE 3000

CMD ["lapis", "server"]
