FROM ruby:2.5.3
RUN apt-get update -qq \
&& apt-get install -y nodejs
ADD . /Rails-Docker
WORKDIR /Rails-Docker
RUN gem install bundler:1.15.0
RUN bundle update
RUN bundle install
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]