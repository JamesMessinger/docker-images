# Docker image file
# https://docs.docker.com/engine/reference/builder/

FROM ruby:alpine

# Install SSL certificates, so swagger-diff can access HTTPS URLs
RUN apk -U upgrade && \
    apk --no-cache add curl ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*

RUN gem install swagger-diff

ENTRYPOINT ["swagger-diff"]
