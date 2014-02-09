socketio = require('socket.io')

module.exports.listen = (server) ->
  io = socketio.listen(server)
  io.set 'log level', 1

  io.sockets.on 'connection', (socket) ->
    console.log 'Connection established'

    socket.on 'index', (data) ->
      console.log 'socket called from index'
      socket.emit 'indexResponse'
      return
    socket.on 'timer', (data) ->
      console.log 'socket called from timer'
      require ('timer.js')(socket)
      return
    return
  return


