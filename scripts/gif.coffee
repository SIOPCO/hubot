# Description:
#   Inserts gifs
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot gif <name> -  Name of the gif

module.exports = (robot) ->

    gifs =
        'jean claude': 'http://f.cl.ly/items/3G340a181O3W1z1u2I2V/jean-claud-van-dam-dance.gif'
        'chinese thumbs up': 'http://i.imgur.com/XJyGY.gif'
        'escalated quickly': 'http://www.reactiongifs.com/wp-content/uploads/2013/04/escalated.gif'
        'mind blown': 'http://i.imgur.com/Ove28Em.png'
        'laptop smash': 'http://i.imgur.com/sGhgSm6.gif',
        'survive': 'http://media.giphy.com/media/a8yhMwEUiePqU/giphy.gif',
        'hold on to your butts': 'http://24.media.tumblr.com/tumblr_m48kj1M5tG1r7tfy9o2_500.gif'
        'beard slap': 'http://i.imgur.com/6qLjt.gif'

    robot.respond /gif (.*)/i, (msg) ->
        name = gifs[msg.match[1]]
        msg.send name if name?

    robot.respond /gif bomb/i, ->
        msg.send gif for name, gif of gifs
