io = require('./sockets.js')

exports.countdown = (milliseconds, update, complete=null) ->
  start = new Date
  frequency = 100
  callback = () ->
    now = new Date
    timeLeft = new Date((milliseconds + 1000) - (now - start))
    update timeLeft
    if now - start < milliseconds
      setTimeout callback, frequency
    else if complete
      complete()
  setTimeout callback, frequency

exports.padLeft = (length, string, padString) ->
  string = string.toString()
  if string.length < length
    for i in [1..length - string.length]
      string = padString + string
  string

exports.randrange = (min, max) ->
  Math.floor(Math.random() * (max - min + 1)) + min

exports.countdownEmit = (socket, data, emitTo) ->
  callback = ->
    if data.time >= 0
      socket.emit data.emitTo, {display: data.time}
      data.time--
      setTimeout callback, 1000
    else socket.emit data.emitTo, {display: data.name}
  setTimeout callback, 1000
