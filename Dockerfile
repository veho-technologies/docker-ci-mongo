FROM mongo:4.4

CMD ["mongod", "--nojournal", "--smallfiles", "--replSet", "rs0"]
