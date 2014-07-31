require 'pp'

# Convenience Methods
# token team_id channel_id channel_name timestamp user_id user_name text

module Hanginim
  class Server < Sinatra::Base
    set :port, 4567
    set :bind, '0.0.0.0'

    config = {
      'team'           => ENV['TEAM'],
      'channel'        => ENV['CHANNEL'],
      'name'           => ENV['NAME'],
      'incoming_token' => ENV['INCOMING_TOKEN'],
      'outgoing_token' => ENV['OUTGOING_TOKEN'],
    }
    
    bot = Slackbotsy::Bot.new(config)

    bot.hear(/ ping$/) { "pong" }
    bot.hear(/ 핑$/) { "퐁" }
    
    bot.hear(/ profile$/) { "Remotty Programmer" }

    bot.hear(/ (remotty|리모티)$/) do
      "https://pbs.twimg.com/profile_images/490145744083382272/w_Vwl1Oa.png
 ____  _____ __  __  ___ _____ _______   __
|  _ \| ____|  \/  |/ _ \_   _|_   _\ \ / /
| |_) |  _| | |\/| | | | || |   | |  \ V /
|  _ <| |___| |  | | |_| || |   | |   | |
|_| \_\_____|_|  |_|\___/ |_|   |_|   |_|  

REMOTE + TECH + SERVICE + FUN

Visit http://blog.remotty.com/."
    end

    bot.hear(/ 어록$/)do
      File.open("./data/sentences.txt", "r").readlines("\n---\n").sort_by{rand}[0][0..-6oe]
    end
    
    bot.hear /(한기님.*)/ do |mdata|
      "이상한 사람입니다.\n" * (mdata[0].gsub("한기님").to_a.count - 1)
    end

    post '/' do
      bot.handle_item(params)
    end
  end
end
