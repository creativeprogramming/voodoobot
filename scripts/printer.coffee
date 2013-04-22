# Description:
#   A way to peek at the progress of a 3D printer.
#
# Commands:
#   hubot printer me - Take a picture of the current 3D printer progress.

exec = require('child_process').exec;

module.exports = (robot) ->
  robot.respond /(printer)( me)?(.*)/i, (msg) ->
    exec "/usr/local/bin/wacaw --png /Users/webgeek/Dropbox/public/status", (err, stdout, stderr) ->
      msg.send "https://dl.dropboxusercontent.com/u/169765/status.png"
