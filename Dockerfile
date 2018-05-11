FROM ruby:2.5

LABEL maintainer="justus@hackberlin.de"

RUN apt-get update && \
    apt-get install -y build-essential libpq-dev nodejs && \
    mkdir -p /opt/application

WORKDIR /opt/application

COPY ./Gemfile .
COPY ./Gemfile.lock .

RUN bundle install

COPY ./ /opt/application

ENTRYPOINT ["/opt/application/bin/rails", "server"]
