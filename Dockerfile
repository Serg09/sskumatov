#FROM ruby:2.3.1
#MAINTAINER Sergey Skumatov <sskumatov@gmail.com>
#RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
#RUN mkdir /home/serg09/workspace/sskumatov/docker
#WORKDIR /home/serg09/workspace/sskumatov/docker
#ADD Gemfile /home/serg09/workspace/sskumatov/docker/Gemfile
#ADD Gemfile.lock /home/serg09/workspace/sskumatov/docker/Gemfile.lock
#RUN bundle install
#ADD . /home/serg09/workspace/sskumatov/docker


FROM ruby:2.3.1
MAINTAINER Sergey Skumatov <sskumatov@gmail.com>
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs libqt4-dev
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp


#FROM ruby:2.3.1
#RUN apt-get update -qq \
#  && apt-get install -y --no-install-recommends \
#  libpq-dev \
#  qt5-default \
#  libqt5webkit5-dev \
#  nodejs
#
#RUN mkdir /home/serg09/workspace/sskumatov
#WORKDIR /home/serg09/workspace/sskumatov
#COPY Gemfile /home/serg09/workspace/sskumatov/
#COPY Gemfile.lock /home/serg09/workspace/sskumatov/
#RUN bundle install
#
#COPY . /home/serg09/workspace/sskumatov/


## Base image
#FROM ruby:latest
#ENV HOME /home/rails/webapp
## Install PGsql dependencies and js engine
#RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
#WORKDIR $HOME
## Install gems
#ADD Gemfile* $HOME/
#RUN bundle install
## Add the app code
#ADD . $HOME
## Default command
#CMD ["rails", "server", "--binding", "0.0.0.0”]
