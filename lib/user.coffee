util = require './wholeHouse.coffee'
_ = require 'underscore'

exports.create = (options) ->
  settings =
    userName: "newUser #{util.randrange(1000, 9999)}"
    uri:
      iphone: "wH:newiPhoneURI#{util.randrange(1000, 9999)}"
      tablet: "wH:newTabletURI#{util.randrange(1000, 9999)}"
    name: "newUser"
    active: true
 
  _.extend settings, options

  user =
    addUser: () =>
      # Authorize user, check credentials
      # Check to see if user exists
      if (!userExists = @search(userName:"Will Harrison").getUser())
        console.log "going to display user"
        @display(userExists)
        # check to see if this is the user trying to be created
        #if (user already exists)
          #ignore
          #return
      settings
  user
###
      todo: console.log """
        who: authorized user
        what: add user
        when: anytime
        where: anywhere
        how:
          @search for existing user
          verify not already existing user
          create new stub with required info
          fill in preferences
        why: user create event
      """
###

exports.search = (options) ->
  settings =
    userName: "SearchUser"

  _.extend settings, options
  user =
    getUser: () ->
      console.log "entering search"
  user
###      
    todo: console.log """
        who: authorized user
        what: search user
        when: anytime
        where: anywhere
        how: 
          pass in user object(s) to storage
          get results back
        why: user search event
      """
###

exports.display = (options) ->
  settings =
    userName: "DisplayUser"

  _.extend settings, options
  user =
    getUser: (userName) ->
      console.log "User Display: #{settings}"
  user
###      
      todo: console.log """
        who: authorized user
        what: get user
        when: anytime
        where: anywhere
        how:
          @search()
          display user in specified format
        why: display user event
      """
###


exports.delete = (options) ->
  settings =
    userName = "DeleteUser"

  _.extend settings, options
  user =
    deleteUser: (userName) ->
      return
  user
###
      todo: console.log """
        who: authorized user
        what: delete user
        when: anytime
        where: anywhere
        how:
          @search(userName)
          @display(userName)
          DeleteStart
            verify
              softDelete
            else
              go back
        why: delete user event
      """
    ###
