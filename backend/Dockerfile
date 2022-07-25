FROM ruby:2.7.2

WORKDIR /myapp

# Install rails
COPY ./backend/Gemfile /myapp/Gemfile
COPY ./backend/Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

COPY ./backend .

CMD ["rails", "server", "-b", "0.0.0.0"]