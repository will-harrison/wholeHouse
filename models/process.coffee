
model.process = Model
  id: [string, auto]
  description: [string, required]
  requirements: [checklist] 

getChecklist = () ->
  if @checklist
    checklist = require './checklist.coffee'
