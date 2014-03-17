module.exports = (socket, alarmTime, goBack) ->
  moment = require 'moment'
  console.log 'alarm called'
  
  ringInterval = [
    1
    , 0.38
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

# convert inerval to ringTime based on alarmTime
alterTime = (time, modifier, scale=seconds) ->
  moment(time * moment.duration(modifier, scale))

minuteInterval = [alarmTime - moment.duration(-goBack, "minutes")]
minuteInterval.push(alterTime(mintuteInterval.slice(-1), i, "minutes") for i in ringInterval)

console.log minuteInterval




# While more ringTime[s] repeat
# Determine difference between now and next ringTime
#
# Wait number of seconds between now and next ringTime
#
# Ring at ringTime

 





