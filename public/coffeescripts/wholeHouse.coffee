wh = window.wholeHouse = {}
wh.tools = {}

wh.tools.countdown = (milliseconds, update, complete=null) ->
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

wh.tools.padLeft = (length, string, padString) ->
  string = string.toString()
  if string.length < length
    for i in [1..length - string.length]
      string = padString + string
  string

wh.tools.randrange = (min, max) ->
  Math.floor(Math.random() * ((max - min) + min))

