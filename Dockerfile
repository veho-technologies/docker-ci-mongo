FROM mongo:4.4

CMD ["mongod", "--replSet", "rs0"]
