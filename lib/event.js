// Generated by CoffeeScript 1.6.3
(function() {
  module.exports = function(socket) {
    var contact;
    contact = require('../../services/contactService.js');
    return socket.emit('eventDetails', {
      display: "" + contact.firstName + " " + contact.lastName
    });
  };

}).call(this);
