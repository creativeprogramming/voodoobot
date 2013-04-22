# Description:
#   A way to peek at the progress of a 3D printer.
#
# Commands:
#   hubot printer me - Take a picture of the current 3D printer progress.

exec = require('child_process').exec;

module.exports = (robot) ->
  robot.respond /(printer)( me)?(.*)/i, (msg) ->
    exec "/usr/local/bin/wacaw --png /Users/webgeek/Dropbox/Replicator/status.png", (err, stdout, stderr) ->
      msg.send "https://www.dropbox.com/s/ydzywyewrifcia2/status.png"
