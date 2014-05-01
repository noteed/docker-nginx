from ubuntu:12.04
maintainer Vo Minh Thu <noteed@gmail.com>

run apt-get update
run apt-get install -q -y language-pack-en
run update-locale LANG=en_US.UTF-8

run apt-get install -q -y vim
run apt-get install -q -y nginx

expose 80
cmd ["sh", "-c", "service nginx start ; tail -F /var/log/nginx/access.log"]
