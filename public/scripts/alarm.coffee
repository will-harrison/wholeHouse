_ = require 'underscore'
moment = require 'moment'
exports.create = (options) ->
  settings =
    alarmTime: moment().add(30, "minutes")
    goBack: [moment.duration(30, "minutes")]
    repeat: false
    frequency: moment.duration(1, "day")
  _.extend settings, options
  ringRatios = [
     0.38
    , 0.618421052631579
    , 0.624113475177305
    , 0.613636363636364
    , 0.62962962962963
    , 0.617647058823529
    , 0.619047619047619
    , 0.615384615384615
    , 0.625
    , 0
    ]

  goBack = settings.goBack
  alarmTime = settings.alarmTime

  #populate rest of goBack array
  goBack.push(moment.duration(_.last(goBack).valueOf() * ratio)) for ratio in ringRatios
  #convert ratios to actual times
  ringTime = (moment(alarmTime - back.valueOf()).toString() for back in goBack)
  alarm = 
    start: () ->
      ringTime
    stop: () ->
      #stop

  alarm
