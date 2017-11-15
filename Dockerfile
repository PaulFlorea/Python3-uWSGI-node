FROM paulflorea/python3-uwsgi:alpine

# Install Node.js and git
RUN apk update && apk upgrade && apk add --no-cache --update \
        nodejs \
        git

# Safely updates NPM
RUN npm install -g npm --prefix=/usr/local
RUN ln -s -f /usr/local/bin/npm /usr/bin/npm 