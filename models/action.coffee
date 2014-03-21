parser = require './../public/scripts/parser.coffee'

exports.action = Model
  id: [string, auto]
  description: [string, required]
  command: [[string, required]]
  parser: [parser]

# check for known actions
# parse command for known actions
# ex:
#   {[juliet, ashton], new sleepover, [friday 9:07 PM, repeat=false] , ashton's house, sleepover checklist, #entertainment}
#   {charlie, juliet, ava}, new chore:unload, [daily, repeat, countdown], home, null, #household}
