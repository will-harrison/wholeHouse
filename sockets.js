// Generated by CoffeeScript 1.6.3
(function() {
  var socketio;

  socketio = require('socket.io');

  module.exports.listen = function(server) {
    var io;
    io = socketio.listen(server);
    io.set('log level', 1);
    return io.sockets.on('connection', function(socket) {
      socket.on('index', function(data) {
        console.log('sockets from index');
        return socket.emit('indexResponse');
      });
      return socket.on('timer', function(data) {
        var countdown;
        countdown = require('./public/javascripts/wholeHouse.js')(io);
        return countdown.countdownEmit(socket, 5, 'countdown');
      });
    });
  };

}).call(this);
