FROM ruby:2-alpine
LABEL maintainer="Coding <code@ongoing.today>"

RUN apk update && \
    apk add --no-cache cmake git icu-libs icu-dev make libcurl curl-dev g++ ruby ruby-dev && \
    gem install github-linguist && \
    gem install github-markdown && \
    gem install gollum && \
    apk del cmake make g++ && \
    rm -rf /var/cache/apk/*
WORKDIR /wiki
ENTRYPOINT ["gollum", "--port", "8080"]
EXPOSE 8080
