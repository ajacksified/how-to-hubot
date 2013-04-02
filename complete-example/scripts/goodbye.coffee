goodbyes = [
  "Bye, {name}.",
  "Later, {name}.",
  "Take care, {name}."
]

goodbye = (name) ->
  index = parseInt((Math.random() * goodbyes.length) >> 0)
  message = goodbyes[index]
  message.replace(/{name}/, name);

module.exports = (robot) ->
  robot.hear /(bye|later|see y(ou|a)|take care),?\s(.*)/i, (msg) ->
    if robot.name.toLowerCase() == msg.match[3].toLowerCase()
      goodbyeMessage = goodbye(msg.message.user.name)
      msg.send(goodbyeMessage)
            
