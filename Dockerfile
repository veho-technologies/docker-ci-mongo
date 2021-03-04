FROM mongo:4.4

CMD ["mongod", "--nojournal", "--noprealloc", "--smallfiles", "--replSet", "rs0"]
