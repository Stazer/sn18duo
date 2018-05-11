# README
## Run with docker
docker build --tag sn-duo . && docker run -p 3000:3000 sn-duo
## Run baremetal (ruby 2.5.1 required)
bundle install && bin/rails s
