# Description
#   指定された文章を形態素解析する
#
# Commands:
#   hubot 形態素解析 <text> - 指定された<text>を形態素解析する
#
# Author:
#   yagizombie <yanagihara+zombie@brainpad.co.jp>
child_process = require 'child_process'

module.exports = (robot) ->
  robot.respond /(形態素解析|ma)\s(.*)/i, (msg) ->

    msg.send "ぬぬぬっ (grumpycat)"

    child_process.exec "echo '" + msg.match[2] + "' | mecab | grep -v '^EOS$'" , (error, stdout, stderr) ->
      if !error
        rep = "/quote  ∴‥∵‥∴‥∵‥∴‥∴‥∵‥∴‥∵‥∴‥∴‥∵‥∴‥∵‥∴‥∴‥∵‥∴\n"
        rep += stdout
        msg.send rep
        msg.send "こんな感じ♪ @#{msg.message.user.mention_name}"
      else
        msg.send "(fu) ぷぎゃ～～"
