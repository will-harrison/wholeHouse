io = require('./sockets.js')

wH = {}

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

exports.countdownEmit = (data) ->
  data.socket.emit data.emitTo, {display: "#{data.greeting.regular ? null} #{data.name ? null}"}
  callback = ->
    if data.countdownValue >= 0
      data.socket.emit data.emitTo, {display: data.countdownValue}
      data.countdownValue--
      setTimeout callback, 1000
    else data.socket.emit data.emitTo, {display: data.endMessage ? null}
  setTimeout callback, 1000


exports.wH.user =
  [
    id: ''
    userName: 'Will'
    uri:
      nexus10: 'wh:24.75.121.111.will.nexus10'
      iphone: 'wh:24.75.121.111.will.iphone'
      desktop: 'wh:24.75.121.111.will.desktop'
    name: 'Will Harrison'
    preferences:
      notifications:
        alarm:
          uri: 
            primary: @iphone
            secondary: @desktop
        event:
          uri:
            primary: @desktop
            secondary: @iphone
            tertiary: @nexus10
  ,
    id: ''
    userName: 'Kristi'
    uri:
      iphone: 'wh:24.75.121.111.kristi.iphone'
      netbook: 'wh:24.75.121.111.kristi.netbook'
      desktop: 'wh:24.75.121.111.kristi.desktop'
  ]
