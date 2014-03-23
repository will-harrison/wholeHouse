util = require 'lib/wholeHouse.coffee'
_ = require 'underscore'

exports.create = (options) ->
  setings =
    userName = "newUser #{util.randRange(1000, 9999)}"
    uri =
      iphone: "wH:newiPhoneURI#{util.randrange(1000, 9999)}"
      tablet: "wH:newTabletURI#{util.randrange(1000, 9999)}"
    name = "newUser" 
 
  _.extend settings, options

  # do contstructor stuff here
  user =
    return
  user
