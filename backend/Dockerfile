FROM ruby:2.7.2

WORKDIR /myapp

# Install rails
COPY ./backend/src/Gemfile /myapp/Gemfile
COPY ./backend/src/Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

COPY ./backend/src .

CMD ["rails", "server", "-b", "0.0.0.0"]