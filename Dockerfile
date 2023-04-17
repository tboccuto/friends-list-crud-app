FROM ruby:2.7.0-slim

RUN apt-get update && \ 
apt-get install ubuntu-dev-tools libsqlite3-dev -y

WORKDIR /app
COPY Gemfile ./
RUN gem install sqlite3 -v '1.4.2' --source 'https://rubygems.org/'
RUN bundle install
COPY . .

RUN rails db:migrate RAILS_ENV=development

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]