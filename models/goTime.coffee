alarm = require './alarm.coffee'

exports.goTime = Model
  id: [string, auto]
  description: [string, required]
  goTime: [Date, required]
  useAlarm: [bool, required]
  alarm: [alarm, optional]

getAlarm = (@useAlarm, alarm) ->
  if @alarm
    a = alarm()
    alarm = a.create(options) 

