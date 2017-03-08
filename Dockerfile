FROM node:boron


WORKDIR  /usr/test-app

COPY  package.json /usr/test-app


RUN npm install sails -g && npm install


COPY  . /usr/test-app


EXPOSE 1337


CMD sails lift  --models.migrate='alter'
