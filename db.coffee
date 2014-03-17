orientdb = require 'orientdb'

# config
dbConfig =
  user_name: 'admin'
  user_password: 'admin'

serverConfig = 
  host: '24.75.121.111'
  port: 2480

server = new orientdb.Server(serverConfig)
db = new orientdb.GraphDb('wholeHouse', server, dbConfig)

db.open (err) ->
  throw err if err
  console.log 'Connected to OrientDB'


