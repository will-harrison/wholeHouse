
exports.checklist = Model
  id: [string, auto]
  description: [string, required]
  steps:
    id: [string, auto]
    description: [string, required]
    sortOrder: [int]
    optionalStep: [bool, required]
    detail: [string]
