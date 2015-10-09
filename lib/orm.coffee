knex = require('knex')(
  client: 'pg'
  connection: process.env.PG_CONNECTION_STRING or= "pgsql://localhost/trackrecord"
)

module.exports = require('bookshelf')(knex)