# Description:
#   Little Golden Books that didn't make it
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot goldenbooks
#
# Author:
#   dk

books = [
  "You Are Different, and That\'s Bad",
  "Detaching Dogs Dutifully, Delicately, and Discretely: An \'I-can-do-it-too\' Narrative. Illustrated by Doctor Doug",
  "The Boy Who Died From Eating All His Vegetables",
  "Dad\'s New Wife Robert",
  "Fun four-letter Words to Know and Share",
  "Hammers, Screwdrivers and Scissors: An \"I-Can-Do-It\" Book",
  "The Kids\' Guide to Hitchhiking",
  "Kathy Was So Bad Her Mom Stopped Loving Her",
  "Curious George and the High-Voltage Fence",
  "All Cats Go to Hell",
  "The Little Sissy Who Snitched",
  "Some Kittens Can Fly",
  "That\'s it, I\'m Putting You Up for Adoption",
  "Grandpa Gets a Casket",
  "The Magic World Inside the Abandoned Refrigerator",
  "Garfield Gets Feline Leukemia",
  "The Pop-Up Book of Human Anatomy",
  "Strangers Have the Best Candy",
  "Whining, Kicking and Crying to Get Your Way",
  "You Were an Accident",
  "Things Rich Kids Have, But You Never Will",
  "Pop\! Goes The Hamster... And Other Great Microwave Games",
  "The Man in the Moon Is Actually Satan",
  "Your Nightmares Are Real",
  "Where Would You Like to Be Buried?",
  "Eggs, Toilet Paper, and Your School",
  "Why Can\'t Mr. Fork and Ms. Electrical Outlet Be Friends?",
  "Places Where Mommy and Daddy Hide Neat Things",
  "Daddy Drinks Because You Cry",
  "Mommy\'s New Wooden Spoon. Another Good Reason To Shut The Hell Up",
  "Vacuum Hickies Cause Cancer"
]

module.exports = (robot) ->
  robot.hear /golden.*?books/i, (msg) ->
    msg.send "Little Golden Books that didn\'t make it: " + msg.random books
