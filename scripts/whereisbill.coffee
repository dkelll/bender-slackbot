# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   where is [name]? - Tell us where, where the hell he is.
#
# Author:
#   brandonvalentine but dk modified it heavily

places = [
  "Well, maybe he went to get a sideways haircut",
  "He\'s at dreamforce",
  "Maybe he went to get a striped shirt",
  "He is peeing",
  "He is outside wishing he had a different, less-costly habit",
  "He is driving to Canada, I think?",
  "He is eating pie in the cafe",
  "Well, maybe he went to get an Air Force beanie",
  "Maybe he went to get a Vespa scooter",
  "Maybe he went to get a British flag",
  "Well, maybe he went to get a mohawk",
  "Maybe he went to see the Circle Jerks",
  "He is stuck on a call",
  "He is in the corner picking his nose. Make sure he washes his hands next time you see him",
  "He died",
  "He stopped talking to me. I don't know where he is",
  "He rage quit like 15 minutes ago. It was epic",
  "I thought he was in the Agile meeting with you?",
  "He is in the bathroom strategically planning his next attack",
  "He said something about dropping the kids off at the pool, if I recall correctly",
  "He is making a donation",
  "Not sure. I bet he is in... no wait. I have no clue",
  "He lives in Iceland now",
  "He\'s in the boss\'s office getting his hand slapped for something Victor did",
  "Didn\'t he move to Cuba?",
  "He is putting on makeup in the bathroom",
  "He is returning some video tapes"
]

module.exports = (robot) ->
  robot.hear /where.*is.*(joe|thomas|matt|mmchughes|logan|daniel|houk|dennis|vincent|tyler|jack|ani|amit|john|burch|victor|scott|felisbino|dk|dkel|)/i, (msg) ->
    msg.send msg.random places
