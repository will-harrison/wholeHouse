_ = require 'underscore'
wH = require './wholeHouse.coffee'

exports.create = (options) ->
  settings =
    description: "New Checklist #{wH.randrange(1000, 9999)}"
    steps:[]
    sortOrder: null
    required: false
  _.extend settings, options

  checklist =
    addStep: () ->
      step = require './addStep.coffee'
      settings.step.push step
    removeStep: (stepID) ->
      todo:
        console.log """
            who: authorized user
            what: remove step
            when: any time
            where: anywhere
            how: fill in here
            why: remove item event
        """
    orderSteps: () ->
      todo:
        console.log """
            who: authorized user
            what: change order
            when: any time
            where: anywhere
            how: fill in here
            why: reorder event
            """
      
  checklist
