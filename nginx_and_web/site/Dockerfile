FROM alpine:3.17 AS tmp

COPY src /src
WORKDIR /src

# make changes in image
RUN ["mv", "i.html", "index.html"]

# create container for deploy
FROM httpd:alpine3.17

COPY --from=tmp /src/ /usr/local/apache2/htdocs/

# RUN AS NON ROOT USER EXAMPLE

# RUN adduser -D run
# USER runner
# WORKDIR /home/run
# COPY --chown=run --from=tmp /src/ /home/run/www
# CMD ["script]


