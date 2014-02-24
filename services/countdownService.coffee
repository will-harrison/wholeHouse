module.exports = (socket) ->
  countdown = require '../public/scripts/wholeHouse.js'
  user = require './userService.js'
  socket: socket
  user: user
  countdownValue: countdown.randrange(7, 15)
  emitTo: 'countdown'
  delay: 1000
  name: '<user>'
  endmessage: "Time's Up!"
  greeting:
    formal: 'How do you do?'
    casual: 'hi'
    regular: 'hello'
    computer: 'greetings'
