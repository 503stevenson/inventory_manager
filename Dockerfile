FROM ruby:2.7.2

# Default directory
ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH

# Install rails
RUN gem install rails bundler

WORKDIR /opt/app

COPY ./inventory_manager .

CMD rails s