#! /bin/bash
cd /app
RUN bundle install --without development --without test
mkdir -p /data/bharkharapp/public
cp -r app/public/* /data/bharkharapp/public
ruby app/router.rb