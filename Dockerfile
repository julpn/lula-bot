FROM ruby:2.5

RUN apt-get update -qq

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get install -y build-essential libpq-dev nodejs
RUN apt-get update && apt-get install -y yarn

RUN mkdir /wedding-bot
WORKDIR /wedding-bot
COPY Gemfile /wedding-bot/Gemfile
COPY Gemfile.lock /wedding-bot/Gemfile.lock

RUN bundle install
RUN bundle exec rails webpacker:install

COPY . /wedding-bot
