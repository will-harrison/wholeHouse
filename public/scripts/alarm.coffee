moment = require 'moment'

module.exports = (socket, alarmTime, goBack) ->
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


alarmTime = moment(@alarmTime)
console.log alarmTime

# use mulitplier to modify time 
multiplyTime = (time, multiplier, scale=seconds) ->
  moment(time * moment.duration(multiplier, scale))

# convert inerval to ringTime based on alarmTime
intervalToTime = (alarmTime, @ringInterval) ->
  minuteInterval = [alarmTime - moment.duration(-@goBack, "minutes")]
  minuteInterval.push(multiplyTime(mintuteInterval.slice(-1), i, "minutes") for i in @ringInterval)
  console.log minuteInterval

#console.log intervalToTime(alarmTime, @ringInterval)
console.log multiplyTime(moment(), .38, "minutes")



# While more ringTime[s] repeat
# Determine difference between now and next ringTime
#
# Wait number of seconds between now and next ringTime
#
# Ring at ringTime

 





