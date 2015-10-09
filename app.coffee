app = do require('koa')
router = do require 'koa-router'

require('./routes/accounts')(router)

app.use do router.routes

module.exports = app