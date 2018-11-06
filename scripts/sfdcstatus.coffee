# Description:
#   Get sfdc instance status
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   sfdc status [instance] - Get current instance status from trust.salesforce.com
#
# Author:
#   dk

module.exports = (robot) ->
  robot.hear /sfdc status (.*)/i, (msg) ->
    robot.http("https://api.status.salesforce.com/v1/instances/"+msg.match[1]+"/status")
      .header('Accept', 'application/json')
      .get() (err, res, body) ->
        if err
          # It's always Victor's fault
          msg.send "It broke. :( It is probably @felisbino\'s fault: #{err}"
          return
        data = JSON.parse body
        # I'm not too keen on using inline markdown like this, but for init I'll leave it.
        msg.send "### :sfdc_cloud: SFDC Instance Status Report \n| Instance | Environment | Release | Status |\n|:-----|:-----|:-----|:-----|\n| #{data.key} | #{data.environment} | #{data.releaseVersion} | #{data.status} |"
