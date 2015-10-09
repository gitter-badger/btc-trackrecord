orm = require '../lib/orm'

module.exports = (router) ->
  router.get '/', (next) ->
    @body = "Hello"
    yield next