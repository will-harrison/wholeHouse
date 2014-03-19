_ = require 'underscore'
moment = require 'moment'
exports.create = (options) ->
  settings =
    alarmTime: moment().add(5, "minutes")
    goBack: moment.duration(5, "minutes")
    repeat: false
    frequency: moment.duration(1, "day")
  _.extend settings, options
  ringRatios = [
      1
    , .38
    ]
  
  alarm = 
    start: () ->
      console.log 'started'   
    stop: () ->
      #stop

  alarm
