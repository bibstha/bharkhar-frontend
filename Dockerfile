FROM bibstha/ruby:2.1
MAINTAINER Bibek Shrestha, bibekshrestha@gmail.com

ENV RACK_ENV production
WORKDIR /app
COPY . /app
RUN bundle install --without development --without test
VOLUME ["/data", "/log"]
EXPOSE 4567
CMD ["scripts/run.sh"]