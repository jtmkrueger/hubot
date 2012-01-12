# ascii me <text> - Show text in ascii art.
#
# ASCII art.
#

module.exports = (robot) ->
  robot.respond /ascii( me)? (.+)/i, (msg) ->
    msg
      .http("http://asciime.heroku.com/generate_ascii")
      .query(s: msg.match[2])
      .get() (err, res, body) ->
        msg.send body
