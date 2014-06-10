#! /bin/bash
cd /app
mkdir -p /data/bharkharapp/public
cp -r app/public/* /data/bharkharapp/public
ruby app/router.rb