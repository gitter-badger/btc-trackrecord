exports.up = (knex, Promise) ->
  knex.schema.createTable('accounts', (table) ->
    do table.increments

    table.enu 'exchange', [
      'bitfinex',
      'bitstamp'
    ]
    do table.string('api_key').unique
    table.string 'api_secret'

    table.unique ['exchange', 'api_key']
  )

exports.down = (knex, Promise) ->
  knex.schema.dropTableIfExists 'accounts'
  