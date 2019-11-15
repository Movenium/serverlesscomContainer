FROM node:8-alpine

RUN apk update
RUN apk --no-cache add g++ gcc libgcc libstdc++ linux-headers make python
RUN npm install --quiet node-gyp -g

RUN npm install -g serverless && \
    npm install -g serverless-offline && \
    npm install -g yarn

WORKDIR /usr/src/app

EXPOSE 3000

CMD [ "sls", "offline", "start" ]