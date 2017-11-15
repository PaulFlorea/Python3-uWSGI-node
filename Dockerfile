FROM paulflorea/python3-uwsgi:latest

# install node
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs
RUN npm install npm@latest -g