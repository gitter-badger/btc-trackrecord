require 'co-mocha'
request = require 'co-supertest'

app = require '../app'
server = do app.listen

describe 'Accounts', ->
  agent = {}

  before ->
    agent = request.agent server

  it "should be Hello ", ->
    yield agent.get('/').expect(200).end()