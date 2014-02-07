socketio = require('socket.io')

module.exports.listen = (server) ->
  io = socketio.listen(server)
  io.set 'log level', 1

  io.sockets.on 'connection', (socket) ->

    socket.on 'index', (data) ->
      console.log 'sockets from index'
      socket.emit 'indexResponse'

    socket.on 'timer', (data) ->
      countdown = require('./public/scripts/wholeHouse.js')
      countdown.countdownEmit(socket, 5, 'countdown')