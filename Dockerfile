FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /wedding-bot
WORKDIR /wedding-bot
COPY Gemfile /wedding-bot/Gemfile
COPY Gemfile.lock /wedding-bot/Gemfile.lock
RUN bundle install
COPY . /wedding-bot
