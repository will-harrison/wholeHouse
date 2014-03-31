_ = require 'underscore'
wH = require './wholeHouse.coffee'

exports = (options) ->
  settings = 
    description: "New step item #{wH.randrange(1000, 9999)}"
    complete: false

  _.extend settings, options
  
  description = settings.description
  complete = settings.complete
  step =
    console.log "tester"
    createStep:
      todo: console.log """
          who: authorized user
          what: search for similar steps, present if found, add step if not found
          when: anytime
          where: anywhere
          how:
            createStep()
          why: create list item event
      """
    searchStep:
      todo: console.log """
          who: authorized user
          what: search for step, return results
          when: anytime
          where: anywhere
          how: 
            searchStep()
          why: search step event
      """
    addStep:
      todo: console.log """
          who: authorized user
          what: search for step, add if found, alert if not
          when: anytime
          where: anywhere
          how:
            @searchStep(description)
            if found
              showSimilarSteps(description)
              if user selects similar step
                addStep(step)
            else
              @createStep()
            addStep(step)
          why: add steps to list
        """
  step 
