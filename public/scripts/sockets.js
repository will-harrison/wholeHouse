// Generated by CoffeeScript 1.6.3
(function() {
  var socketio;

  socketio = require('socket.io');

  module.exports.listen = function(server) {
    var io;
    io = socketio.listen(server);
    io.set('log level', 3);
    io.sockets.on('connection', function(socket) {
      console.log('Connection established');
      socket.on('index', function(data) {
        console.log('socket called from index');
        socket.emit('indexResponse');
      });
      socket.on('timer', function(data) {
        console.log('socket called from timer');
        require('./timer.js')(socket);
      });
      socket.on('event', function(data) {
        console.log('socket called from event');
        require('./event.js')(socket);
      });
    });
  };

}).call(this);
