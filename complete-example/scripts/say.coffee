querystring = require('querystring')

module.exports = (robot) ->
  robot.router.get "/hubot/say", (req, res) ->
    query = querystring.parse(req._parsedUrl.query)
    message = query.message

    user = {}
    user.room = query.room if query.room

    robot.send(user, message)
    res.end "said #{message}"
