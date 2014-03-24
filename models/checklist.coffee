
exports.checklist = Model
  id: [string, auto]
  description: [string, required]
  steps: [
    [step: [id]
    sortOrder: [int] # if sort order is provided, use it, otherwise default to insertion order
    required: [bool]
    ]
  ]
