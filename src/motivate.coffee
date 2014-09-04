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
#   !h5 <username> - Hubot gives the user a high five
#   ^5 <username> - Hubot gives the user a high five
#   !m <username> - Hubot encourages your user
#   !thank <username> - Hubot encourages your user
#   !thanks <username> - Hubot encourages your user
#
# Author:
#   jjasghar



module.exports = (robot) ->
        
  robot.hear /^!(m|than(k|ks)) (.+)$/i, (msg) ->
    user = msg.match[3]

    praise = [
        "Keep on rocking, #{user}!",
        "Keep up the great work, #{user}!",
        "You're awesome, #{user}!",
        "You're doing good work, #{user}!" # Original and inspiration
        ]

    msg.send msg.random praise

  robot.hear /^(!h5|\^5) (.+)$/i, (msg) ->
    user = msg.match[2]

    msg.emote "high fives #{user}"

