module.exports = (socket) ->
  console.log 'alarm called'
  
  interval = [
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

# convert inerval to time
args = {
  ringTime: Date.parse("2/12/14 6:00 PM")
   
}

checkTime = Date.now()
timeLeft = 
