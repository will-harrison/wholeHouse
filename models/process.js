// Generated by CoffeeScript 1.6.3
(function() {
  var getChecklist;

  model.process = Model({
    id: [string, auto],
    description: [string, required],
    requirements: [checklist]
  });

  getChecklist = function() {
    var checklist;
    if (this.checklist) {
      return checklist = require('./checklist.coffee');
    }
  };

}).call(this);
