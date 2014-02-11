module.exports = (socket) ->
  countdown = require './wholeHouse.js'
  countdown.countdownEmit {
      socket
      , countdownValue: countdown.randrange(7, 16) 
      , emitTo: 'countdown'
      , delay: 1000
      , name: 'Brian'
      , endMessage: "Time's Up!"
      , greeting: {
          formal: 'how do you do?'
          , casual: 'hi'
          , regular: 'hello'
      }
      , endMessage: "Time's up!" 
    }
