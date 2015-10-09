# Update with your config settings.

module.exports =

  development:
    client: 'postgresql'
    connection: process.env.PG_CONNECTION_STRING or= "pgsql://localhost/trackrecord"
    pool:
      min: 2
      max: 10
    migrations:
      tableName: 'knex_migrations'

  production:
    client: 'postgresql'
    connection: process.env.PG_CONNECTION_STRING or= "pgsql://localhost/trackrecord"
    pool:
      min: 2
      max: 10
    migrations:
      tableName: 'knex_migrations'