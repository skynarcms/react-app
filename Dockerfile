FROM node:alpine
COPY . /app
WORKDIR /app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
RUN npm install --prefer-offline --production --quiet --force
EXPOSE 3000
ENTRYPOINT ["/app/entrypoint.sh"]