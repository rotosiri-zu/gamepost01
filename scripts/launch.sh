bundle exec rake db:migrate
cp -rf /tmp/public/* /gamepost01/public/
mkdir -p tmp/sockets
bundle exec puma -C config/puma.rb