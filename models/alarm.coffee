user = require '../../models/user.coffee'

exports = Model
  id: [string, auto]
  user: [user, required]
  description: [string, required]
  repeat: [bool]
  frequency: [string]
  alarmTime: [Date]
  goBack: [int]
  
  
