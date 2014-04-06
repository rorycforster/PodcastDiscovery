require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = "TWITTER_CONSUMER_KEY"
  config.consumer_secret = "TWITTER_CONSUMER_SECRET"
  config.access_token = "TWITTER_ACCESS_TOKEN"
  config.access_token_secret = "TWITTER_ACCESS_SECRET"
end