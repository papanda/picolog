Rails.application.config.middleware.use OmniAuth::Builder do
## Twitter用
	provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
