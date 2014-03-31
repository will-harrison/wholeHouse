_ = require 'underscore'
exports = (options) ->
  #constructor
  settings =
    stepName = "blah"
  _.extend settings, options
  step =
    todo: console.log """
      who: 
    """
    stepName = settings.stepName
  step

