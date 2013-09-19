# Nginx as a Docker image

This is a very simple Docker image with Nginx. It can be used to serve the
current directory, tuning the behavior with Nginx configuration files.

## Running it

Assuming the image has been built as `noteed/nginx`, running is
straightforward:

    > docker run -p 80:80 noteed/nginx

The interesting part is to feed the Docker container, and thus Nginx, with your
configuration, and possibly a root directory from which Nginx will serve some
static content:

    > docker run -p 80:80 \
        -v `pwd`/www:/usr/share/nginx/www \
        -v `pwd`/sites-enabled:/etc/nginx/sites-enabled \
        noteed/nginx

While the Docker container is running, the Nginx access logs are displayed.
