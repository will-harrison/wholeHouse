
exports.location = Model
  id: [string, auto]
  description: [string, required]
  coordinates: [optional],
    lat: [string, optional]
    long: [string, optional]
    map: [uri, optional]
    distance: [float, optional]

getMap = (@coordinates) ->
  if @map
    return

getDistance = (@coordinates) ->
  if @distance
    return
