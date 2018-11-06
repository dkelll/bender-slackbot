# Description:
#   Clearly illustrate with an image what people mean whenever they say "facepalm"
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   jimeh

module.exports = (robot) ->
  robot.respond /facepalm/i, (msg) ->
    msg.http("http://www.facepalm.com")
    .get() (error, response) ->
      msg.http(response.headers['location'])
        .get() (err, res, body) ->
          col1 = body.indexOf '<div class="entry flL">'
          if (col1 != -1)
            body = body.substring col1
            match = body.match /http:\/\/www.facepalm.com\/img7\/\d\d\d\d\/\d\d\/.+?\.jpg/g
            if (match) 
              msg.send match[0]
