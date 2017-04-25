FROM node:7

RUN apt-get update \
  && npm install -g @angular/cli@1.0.0 \
  && ng set --global packageManager=yarn \
  && npm cache clear

RUN useradd jenkins --shell /bin/bash --create-home
USER jenkins
