module.exports = (socket, alarm) ->
  a = require './alarm.coffee'
  alarm = a.create().start()
  socket.emit 'alarmStart', {alarmData: alarm}
