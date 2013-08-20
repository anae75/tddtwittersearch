Twitter.configure do |config|
  twitter_config= YAML.load_file(Rails.root.join('config', 'twitter.yml'))[Rails.env]

  config.consumer_key       = twitter_config['twitter_consumer_key']
  config.consumer_secret    = twitter_config['twitter_consumer_secret'] 
  config.oauth_token        = twitter_config['twitter_oauth_token'] 
  config.oauth_token_secret = twitter_config['twitter_oauth_token_secret'] 
end
