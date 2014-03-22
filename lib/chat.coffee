module.exports = (socket) ->
  socket.on 'sendChat', (data) ->
    socket.emit 'updateChat', socket.username, data


 # socket.coffee emits 'chatConnect'
