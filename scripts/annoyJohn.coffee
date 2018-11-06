# Bug John

module.exports = (robot) ->
  robot.listen(
    (message) -> # Match function
      # Occassionally respond to things that John says
      message.user.name is "redlizard" and Math.random() > 0.8
    (response) -> # Standard listener callback
      # Let John know how happy you are that he exists
      response.reply "EAT A BAG OF DICKS, JOHN! (but only like #{response.match * 100}% of the time)"
  )
