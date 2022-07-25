FROM ruby:2.7.2

WORKDIR /myapp

# Install rails
COPY ./src/Gemfile /myapp/Gemfile
COPY ./src/Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

COPY ./src .

CMD ["rails", "server", "-b", "0.0.0.0"]