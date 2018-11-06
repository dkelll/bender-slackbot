# Description:
#   Talk like a pirate!
#
# Dependencies:
#   None
#
# Configuration:
#   BREWERYDB_API_KEY
#
# Commands:
#   hubot pirate me <stuff to translate> - Translate crap into pirate speak.
#
# Author:
#   dk

module.exports = (robot) ->
  robot.respond /pirate me (.*)/i, (msg) ->
    msg.http("http://postlikeapirate.com/AJAXtranslate.php?typing="+msg.match[1].replace(" ", "+"))
      .get() (err, res, body) ->
        if err
          res.send "Argg! Thar was an error. :( #{err}"
          return 
        msg.reply body
