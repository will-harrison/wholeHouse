module.exports = (socket) ->
  countdown = require './wholeHouse.js'
  countdown.countdownEmit {
      socket
      , timeMultiplier: 3 # * number of seconds
      , countdownValue: countdown.randrange(7, 16) 
      , emitTo: 'countdown'
      , delay: 1000
      , name: '<user>'
      , endMessage: "Time's Up!"
      , greeting: {
          formal: 'how do you do?'
          , casual: 'hi'
          , regular: 'hello'
      }
      , endMessage: "Time's up!" 
    }
