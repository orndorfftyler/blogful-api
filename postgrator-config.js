require('dotenv').config();

module.exports = {
  
  "migrationDirectory": "migrations",
  "driver": "pg" ,/*
  "user": 'wlqbllwezbhhjd',
  "host": 'ec2-52-205-3-3.compute-1.amazonaws.com',
  "database": 'd5b055a43h20co',
  "password": '66ddd08a3c84a7bbcb53c0c25b49853a9ac4e0713c668b7baac31e6489412e79',
  "port": '5432'
  */
  "connectionString": (process.env.NODE_ENV === 'test')
    ? process.env.TEST_DATABASE_URL
    : process.env.DATABASE_URL,
}