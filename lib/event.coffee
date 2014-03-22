module.exports = (socket) ->
  contact = require '../../services/contactService.js'
  #checklist = require '../../services/checklistService.js'
  #calendar = require '../../services/calendarService.js'
  #timer = require '../../services/timerService.js'
  #alarm = require '../../services/alarmService.js'

  socket.emit 'eventDetails', {display: "#{contact.firstName} #{contact.lastName}"}

