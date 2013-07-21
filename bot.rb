require 'cinch'

CHANNEL_NAME = '#couzin-ed'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.counterpop.net"
    c.channels = ["#couzin-ed"]
    c.nick = 'Charlie'
  end

  on :message do |m|
    Channel(CHANNEL_NAME).msg(m.message) unless m.channel?
  end
end

bot.start

