const knex = require('knex')
const app = require('./app')

//const { PORT, DB_URL } = require('./config')
const { PORT, DATABASE_URL } = require('./config')

const db = knex({
  client: 'pg',
  //connection: DB_URL,
  connection: "postgres://wlqbllwezbhhjd:66ddd08a3c84a7bbcb53c0c25b49853a9ac4e0713c668b7baac31e6489412e79@ec2-52-205-3-3.compute-1.amazonaws.com:5432/d5b055a43h20co",
  //ssl: { rejectUnauthorized: false }
})

app.set('db', db)
  

app.listen(PORT, () => {
  console.log(`Server listening at http://localhost:${PORT}`)
})