_ = require 'underscore'
wH = require './wholeHouse.coffee'

exports.create = (options) ->
  description: "New list item #{wH.randrange(1000, 9999)}"
  _.extend settings, options
  description = settings.description
  complete = false
  step =
    getStep:
      todo: console.log """
          who: authorized user
          what: search for step, add if found, alert if not
          when: anytime
          where: anywhere
          how:
            search
            if found
              present found steps
              allow to add to list
            else
              alert none found
          why: add steps to list
        """
      newStep:
        todo: console.log """
            who: authorized user
            what: search for similar steps, present if found, add step if not found
            when: anytime
            where: anywhere
            how:
              search for simliar steps
              if found
                present to user
                if user selects existing step
                  add step to list
              else
                allow user to create new step
            why: create list item event
        """
  step 
