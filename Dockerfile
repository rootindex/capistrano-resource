FROM ruby:2.6-alpine

WORKDIR /deploy
COPY Gemfile /deploy/Gemfile

RUN apk add --no-cache \
  build-base \
  git \
  openssh \
  && bundle install \
  && apk del --no-network \
  build-base