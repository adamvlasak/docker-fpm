FROM andrius/alpine-ruby

RUN apk add rpm && gem install fpm && mkdir /packages && chown 1000 /packages

WORKDIR /packages/
ENTRYPOINT ["fpm"]
