# docker-ci-mongo
MongoDB container to be used during CI.

## Example usage (CircleCI)

```yaml
version: 2
jobs:
  build:
    docker:
      - image: circleci/node:4.8.2
      - image: veho/ci-mongo

    steps:
      - checkout
      # ...

      # initialize replica set
      - run: mongo localhost:27017/test --eval "rs.initiate({_id: 'rs0', members: [{_id: 0, host: 'localhost:27017'}]})"

      # ...
      # run tests
      - run:
        name: run tests
        command: meteor npm run test:ci
        environment:
          MONGO_URL: "mongodb://localhost:27017/test"
          MONGO_OPLOG_URL: "mongodb://localhost:27017/local?authSource=test"
```
