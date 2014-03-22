module.exports = (data) ->
  module.db = orient
  module.db.createVertex data.user, {'class': 'User'}, (err) ->
    return next(err) if err
    
