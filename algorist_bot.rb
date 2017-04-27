require 'slack-ruby-bot'
require_relative 'config/keys'

Slack.configure do |config|
  config.token = ENV['SLACK_API_TOKEN']
end

$slack_client = Slack::Web::Client.new
$slack_client.auth_test

SlackRubyBot.configure do |config|
  config.aliases = ['Algorit', 'algorist']
end

class AlgoristBot < SlackRubyBot::Bot

end

AlgoristBot.run