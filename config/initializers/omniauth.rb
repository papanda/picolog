Rails.application.config.middleware.use OmniAuth::Builder do
## Twitter用
	provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
## facebook用
	provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end
