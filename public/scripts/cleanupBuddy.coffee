util = require './wholeHouse.js'

number = util.randrange(7, 16)
exports.countdown = util.countdown(number/1000, (timeleft) ->
  util.padLeft(2, timeleft.getMinutes(), 0) + ":" + util.padLeft(2, timeleft.getSeconds(), 0))

