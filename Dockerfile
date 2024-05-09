FROM node:alpine
COPY . /react-app
WORKDIR /react-app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
#RUN npm install --prefer-offline --production --quiet --force
EXPOSE 3000
ENTRYPOINT ["/react-app/start.sh"]