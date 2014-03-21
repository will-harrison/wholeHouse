user = require './user.coffee'
action = require './action.coffee' #parser, known actions
goTime = require './goTime.coffee'
location = require './location.coffee'
process = require './process.coffee'
reason = require './reason.coffee'


exports.wholeHouse = Model
  user: user #who
  process: process #what
  goTime: goTime #when
  location: location #where
  process: process #how
  reason: reason #why
