# Description:
#   A port of http://motivate.im/
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   !m <username> - Hubot encourages your user
#
# Author:
#   jjasghar

module.exports = (robot) ->
        
  robot.hear /!m (.*)$/i, (msg) ->
    user = msg.match[1]
    msg.send "You're doing good work, #{user}!"

