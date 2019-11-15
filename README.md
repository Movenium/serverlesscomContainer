# serverlesscomContainer

## Composer example

```
version: '3'
services:
  serverless:
    image: movenium/serverlesscom
    volumes:
      - ./localdir:/usr/src/app
      - node_modules:/usr/src/app/node_modules
    ports:
      - "3001:3000"

volumes:
  node_modules:
```