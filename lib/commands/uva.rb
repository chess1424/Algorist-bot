module Commands
  class Uva < SlackRubyBot::Commands::Base

    def self.call(client, data, match)

    rescue StandardError => error
      client.say(channel: data.channel, text: "Sorry, #{error.message}.")
    end

  end
end