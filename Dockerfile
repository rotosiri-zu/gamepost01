FROM ruby:2.5.3-alpine

WORKDIR /gamepost01

RUN apk add git --no-cache
RUN apk add --update bash perl --no-cache
RUN apk add libxslt-dev libxml2-dev build-base --no-cache
RUN apk add mysql-client mysql-dev --no-cache
RUN apk add --no-cache file
RUN apk add yarn --no-cache
RUN apk add tzdata --no-cache
RUN apk --update add imagemagick --no-cache

COPY . /gamepost01

RUN bundle install
RUN yarn install

RUN mkdir -p /gamepost01/tmp/sockets /gamepost01/tmp/pids

RUN mkdir -p /tmp/public && \
    cp -rf /gamepost01/public/* /tmp/public